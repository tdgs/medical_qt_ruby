require 'win32ole'

olHTML = 5
outlook = WIN32OLE.connect("Outlook.Application")
mapi = outlook.GetNameSpace("MAPI")
inbox = mapi.GetDefaultFolder(6)
msg = inbox.Items(2)
msg.SaveAs('c:\temp\message.htm', olHTML)
