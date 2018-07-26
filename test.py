import sys
from email_reply_parser import EmailReplyParser

print EmailReplyParser.parse_reply(sys.stdin.read())
