import unittest, shortener

const url = "http://justincampbell.me"

suite "shortener":
  test "shortens and expands":
    check:
      shorten(url) == "1"
      shorten(url) == "2"
      expand("1") == url
      expand("54321") == nil
