import jester, asyncdispatch

routes:
  get "/":
    redirect("https://github.com/justincampbell/url-shorteners")

runForever()
