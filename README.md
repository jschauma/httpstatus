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

If you're too lazy even to install the manual page,
[here's a
PDF](https://raw.githubusercontent.com/jschauma/httpstatus/main/httpstatus.7.pdf)
and a [plain
text](https://raw.githubusercontent.com/jschauma/httpstatus/main/httpstatus.7.txt)
version.

## Installation

You can install the manual page by running `make
install`.  This will copy the manual page into the
subdirectory `share/man/man7` under `PREFIX`.

The Makefile defaults to `/usr/local` as the prefix,
but you can change that, if you like:

```
$ make PREFIX=~ install
```

If you'd like to be able to call up the manual page
for each HTTP status code using e.g., `man http:451`,
then you can run

```
$ make install-all
```

This will create symlinks for each status code to
`httpstatus(7)`.


See also
========

Standardized HTTP status codes:

* [Wikipedia List of HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
* [IANA list of HTTP status codes](https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml)
* [Mozilla Developer Network: HTTP response status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

Unofficial HTTP status codes:

* [Akamai Enterprise Application Access Status Codes](https://techdocs.akamai.com/eaa/docs/app-response-codes-login-events-err)
* [Edgio Status Codes](https://docs.edg.io/guides/v4/status_codes)
* [Shopify API response status and error codes](https://shopify.dev/docs/api/usage/response-codes)
