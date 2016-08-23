namespace :daily do
  task :notification  => :environment do
    User.all.each do | user |
      UserMailer.welcome_email(user).deliver!
    end
  end

  task :mailFetch => :environment do
    require 'net/imap'
    require 'date'
    imap = Net::IMAP.new('imap.gmail.com', 993, true)
    imap.login('rptest47', 'redpanthers')
    imap.select('INBOX')
    mailIds = imap.search(["ALL"])#(["NOT", "SEEN"])
    mailIds.each do |id|
      envelope = imap.fetch(id, "ENVELOPE")[0].attr["ENVELOPE"]
      sender = envelope.from[0].mailbox+"@"+envelope.from[0].host
      if(User.find_by(email:sender))
        content = imap.fetch(id,'BODY.PEEK[1]')[0].attr['BODY[1]']
                  .split('<rptest47@gmail.com>')
                  .first#.strip
        if(content.length > 50)
          subject = envelope.subject
          if(subject.nil? || subject=='' || subject[0..2]=='Re:')
            subject = Time.now.strftime('%A')
          end
          puts sender
          puts "Subject"
          puts subject
          puts "Content"
          puts content
          puts Time.now.strftime('%A,%d-%b-%Y %H:%M:%S')
        end
      end
    end 
    imap.logout()
    imap.disconnect()
  end

end