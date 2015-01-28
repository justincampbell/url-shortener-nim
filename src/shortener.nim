import strutils

type Token = string
type Url = string

var id = 0

proc shorten*(url: Url): Token =
  id = id + 1
  return intToStr(id)
