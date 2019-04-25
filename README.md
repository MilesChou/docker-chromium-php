# Chromium + PHP for Docker

[![](https://img.shields.io/docker/stars/mileschou/chromium-php.svg)](https://hub.docker.com/r/mileschou/chromium-php/)
[![](https://img.shields.io/docker/pulls/mileschou/chromium-php.svg)](https://hub.docker.com/r/mileschou/chromium-php/)
[![License][ico-license]](LICENSE)

See [Docker Hub](https://hub.docker.com/r/mileschou/chromium-php/) for more information about Docker Image.

## Usage

Here is an example

```
$ docker run --rm -it -v (pwd)/laravel:/usr/src/app mileschou/chromium-php sh
/usr/src/app $ php -S 0.0.0.0:8080 -t public &
PHP 7.3.4 Development Server started at Thu Apr 25 03:39:30 2019
Listening on http://0.0.0.0:8080
Document root is /usr/src/app/public
Press Ctrl-C to quit.
/usr/src/app $ php artisan dusk
PHPUnit 7.5.9 by Sebastian Bergmann and contributors.

[Thu Apr 25 03:39:49 2019] 127.0.0.1:33698 [200]: /
.                                                                   1 / 1 (100%)

Time: 7.76 seconds, Memory: 12.00 MB

OK (1 test, 1 assertion)
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
