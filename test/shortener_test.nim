import
  shortener,
  unittest

const url = "http://justincampbell.me"

suite "shortener":
  test "shortens and expands":
    check: expand(shorten(url)) == url

  test "creates unique tokens":
    check: shorten(url) != shorten(url)

  test "handles failed lookups":
    check: expand("54321") == nil
