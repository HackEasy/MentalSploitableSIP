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
        SIP Username Enumerator (TCP)

""".red
puts """
	 1st Try {set RPORT 5060; 2nd RPORT 5061}""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? [Default 5060]".blue
print " [!] ---> ".yellow
port = gets.chomp



puts " [?] Enumeration method (Accepted: OPTIONS, REGISTER) ".blue
print " [!] ---> ".yellow
method = gets.chomp



exec("msfconsole -x 'use auxiliary/scanner/sip/enumerator_tcp' -x 'setg RHOSTS #{target}' -x 'setg RPORT #{port}' -x 'set METHOD #{method}' -x 'run'")

