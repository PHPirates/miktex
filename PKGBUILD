# Maintainer: ccat3z <c0ldcat3z@gmail.com>
# Maintainer: heavysink <winstonwu91 at gmail>

pkgname=miktex
pkgver=21.8
pkgrel=1
pkgdesc="a distribution of the TeX/LaTeX typesetting system"
arch=('x86_64')
url="https://miktex.org"
license=('custom')
options=('!buildflags')
depends=('apr' 'boost-libs' 'apr-util' 'bzip2' 'cairo' 'expat' 'fontconfig' 'freetype2'
         'fribidi' 'gd' 'gmp' 'graphite' 'harfbuzz-icu' 'hunspell' 'icu'
         'libjpeg' 'log4cxx' 'xz' 'mpfr' 'libmspack' 'openssl' 'pixman' 'libpng'
         'poppler' 'popt' 'potrace' 'uriparser' 'hicolor-icon-theme' 'zziplib' 'poppler-qt5' 'qt5-script' 'qt5-declarative')
makedepends=('cmake' 'coreutils' 'fop' 'sed' 'libxslt' 'qt5-tools' 'boost')
# sudo rm -r src
# cd ..
# tar -czf 21.8.tar.gz miktex
# mv 21.8.tar.gz miktex/
# md5sum 21.8.tar.gz
source=("${pkgver}.tar.gz")
md5sums=('e646d12a4f8bfa4ca69a4f0c2d8e03c2')

build() {
    cd "$srcdir/$pkgname"
    [ -d build ] || mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX=/opt/miktex -DWITH_UI_QT=ON -DUSE_SYSTEM_POPPLER=TRUE -DUSE_SYSTEM_POPPLER_QT5=TRUE ..
    make
}

package() {
    cd "$srcdir/$pkgname/build"
    make DESTDIR="$pkgdir/" install

    cd $pkgdir

    install -Dm644 opt/miktex/share/applications/miktex-console.desktop usr/share/applications/miktex-console.desktop
    sed -i 's/^Exec=miktex-console$/Exec=\/opt\/miktex\/bin\/miktex-console/' usr/share/applications/miktex-console.desktop
    cp -R opt/miktex/share/applications/icons usr/share/

    mv opt/miktex/man usr/share/man
    #rm $pkgdir/usr/share/man/man5/updmap.cfg.5.gz
}
