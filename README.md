HTTP Status Codes
=================

Sure, you know your `200 Ok`, `404 Not Found`, and
`500 Internal Server Error` HTTP status codes, but
beyond those, chances are you need to look up their
specific meaning.  Pulling up a website for those is
fine, but wouldn't it make more sense to just type
`man httpstatus` and see all the status codes?

I know, I thought so, too.  So here's a manual page
that provides a terse summary of the standardized HTTP
status codes as derived from the various RFCs.

To install, just copy the man page somewhere in your
`MANPATH`, for example:

```
sudo install -c -m 444 httpstatus.7 /usr/local/man/man7/httpstatus.7
```

See also
========

[Wikipedia List of HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
[IANA list of HTTP status codes](https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml)
[Mozilla Developer Network: HTTP response status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
