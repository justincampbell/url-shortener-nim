import unittest, shortener

const url = "http://justincampbell.me"

suite "shortener":
  test "shortens a url to a token":
    check:
      shorten(url) == "1"
      shorten(url) == "2"
