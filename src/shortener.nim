import
  strutils,
  tables

type Token = string
type Url = string

var id = 0
var urls = newTable[Token, Url]()

proc shorten*(url: Url): Token =
  id += 1
  let token = intToStr(id)
  urls[token] = url
  return token

proc expand*(token: Token): Url =
  if hasKey(urls, token):
    return urls[token]
