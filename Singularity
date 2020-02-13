Bootstrap: docker
From: centos:7

# Modify this line to trigger a Singularity Hub rebuild of the image.

%files

    # copy the scripts to the image
    uppmax_init /
    
    # put all variable and function definitions in the image, will be sourced on startup
    env/99-uppmaxvars.sh /.singularity.d/env/

%post

    # install epel repo
    yum install -y epel-release

    # install packages
    yum install -y abattis-cantarell-fonts accountsservice accountsservice-libs acl adobe-mappings-cmap adobe-mappings-cmap-deprecated adobe-mappings-pdf adwaita-cursor-theme adwaita-gtk2-theme adwaita-icon-theme alsa-lib apr apr-util armadillo arpack atk atk-devel atlas at-spi2-atk at-spi2-atk-devel at-spi2-core at-spi2-core-devel attr audit audit-libs audit-libs augeas-libs authconfig autoconf autogen-libopts automake avahi-autoipd avahi-glib avahi-libs bakefile basesystem bash bash-completion bash-completion-extras bc bind-export-libs bind-libs bind-libs-lite bind-license bind-utils binutils biosdevname bison blas blas-devel bluez bolt boost boost169-chrono boost169-context boost169-coroutine boost169-date-time boost169-filesystem boost169-program-options boost169-regex boost169-system boost169-thread boost-atomic boost-chrono boost-context boost-date-time boost-devel boost-filesystem boost-graph boost-iostreams boost-locale boost-math boost-program-options boost-python boost-random boost-regex boost-serialization boost-signals boost-system boost-test boost-thread boost-timer boost-wave btrfs-progs byacc bzip2 bzip2-devel bzip2-libs bzip2-libs cairo cairo-devel cairo-gobject cairo-gobject-devel cdparanoia-libs centos-indexhtml centos-logos centos-release cfitsio CGSI-gSOAP CharLS check-mk-agent cheese-libs chkconfig cln cln-devel clutter clutter-gst3 clutter-gtk cmake cogl colord colord-gtk colord-libs color-filesystem compat-gnome-desktop314 compat-libcolord1 compat-libical1 compat-libstdc++-33 compat-libtiff3 control-center control-center-filesystem copy-jdk-configs coreutils cpio cpp cracklib cracklib cracklib-dicts criu cronie cronie-anacron crontabs cryptsetup cryptsetup-libs ctags cups cups-client cups-filesystem cups-filters cups-filters-libs cups-libs cups-pk-helper curl cyrus-sasl-lib dapl dapl-utils davix-libs daxctl-libs dbus dbus-devel dbus-glib dbus-libs dbus-python dbus-x11 dcap-libs dcap-tunnel-gsi dconf debconf debhelper debootstrap dejavu-fonts-common dejavu-sans-fonts dejavu-sans-mono-fonts deltarpm desktop-file-utils device-mapper device-mapper-event device-mapper-event-libs device-mapper-libs device-mapper-multipath device-mapper-multipath-libs device-mapper-persistent-data dhclient dhcp-common dhcp-libs dh-make diffutils dkms dmidecode dos2unix dosfstools dpkg dpkg-dev dpkg-perl dpm-libs dracut dracut-config-rescue dracut-network dstat dwz dyninst e2fsprogs e2fsprogs-libs ebtables eccodes eccodes-data ed efivar-libs elfutils elfutils-default-yama-scope elfutils-libelf elfutils-libelf elfutils-libelf-devel elfutils-libs elfutils-libs emacs emacs-common emacs-filesystem enchant environment-modules eog epel-release ethtool evince evince-libs evolution-data-server evolution-data-server-langpacks exempi expat expat-devel expect facter fail2ban fail2ban-firewalld fail2ban-sendmail fail2ban-server fakeroot fakeroot-libs fetch-crl fftw fftw2 fftw-devel fftw-libs fftw-libs-double fftw-libs-long fftw-libs-single file file-libs filesystem filezilla findutils finger fio fipscheck fipscheck-lib firefox firewalld firewalld-filesystem fish flac-libs flatpak flatpak-libs flex fltk fontconfig fontconfig-devel fontpackages-filesystem fping freeglut freeglut-devel freeipmi freetype freetype-devel freexl fribidi fribidi-devel ftp fuse fuse-libs fuse-sshfs fxload gawk gc gcc gcc-c++ gcc-gfortran gc-devel GConf2 gcr gd gdal gdal-libs gdal-python gdb gdbm gdbm-devel gd-devel gdisk gdk-pixbuf2 gdk-pixbuf2-devel gdl gdl-common gdm geany geany-libgeany gedit geoclue2 geoclue2-libs geocode-glib GeoIP geoipupdate geos geos-devel gettext gettext-common-devel gettext-devel gettext-libs gfal2 gfal2-all gfal2-plugin-dcap gfal2-plugin-file gfal2-plugin-gridftp gfal2-plugin-http gfal2-plugin-lfc gfal2-plugin-rfio gfal2-plugin-sftp gfal2-plugin-srm gfal2-plugin-xrootd gfal2-python gfal2-util ghc-aeson ghc-array ghc-attoparsec ghc-base ghc-base64-bytestring ghc-base-unicode-symbols ghc-binary ghc-blaze-builder ghc-blaze-html ghc-blaze-markup ghc-bytestring ghc-conduit ghc-containers ghc-data-default ghc-deepseq ghc-digest ghc-directory ghc-dlist ghc-extensible-exceptions ghc-filepath ghc-hashable ghc-highlighting-kate ghc-hslua ghc-HTTP ghc-lifted-base ghc-monad-control ghc-mtl ghc-network ghc-old-locale ghc-old-time ghc-pandoc ghc-pandoc-types ghc-parsec ghc-pcre-light ghc-pretty ghc-primitive ghc-process ghc-random ghc-resourcet ghc-semigroups ghc-syb ghc-tagsoup ghc-template-haskell ghc-temporary ghc-texmath ghc-text ghc-time ghc-transformers ghc-transformers-base ghc-unix ghc-unordered-containers ghc-utf8-string ghc-vector ghc-void ghc-xml ghc-yaml ghc-zip-archive ghc-zlib ghostscript ghostscript-cups ghostscript-fonts giflib ginac ginac-devel git gjs glib2 glib2-devel glibc glibc glibc-common glibc-devel glibc-devel glibc-headers glibc-static glibmm24 glib-networking gl-manpages globus-callout globus-common globus-ftp-client globus-ftp-control globus-gass-copy globus-gass-transfer globus-gsi-callback globus-gsi-cert-utils globus-gsi-credential globus-gsi-openssl-error globus-gsi-proxy-core globus-gsi-proxy-ssl globus-gsi-sysconfig globus-gssapi-error globus-gssapi-gsi globus-gss-assist globus-io globus-openssl-module globus-xio globus-xio-gsi-driver globus-xio-popen-driver glusterfs glusterfs-client-xlators glusterfs-fuse glusterfs-libs glx-utils gmp gmp-devel gnome-bluetooth gnome-bluetooth-libs gnome-desktop3 gnome-icon-theme gnome-keyring gnome-keyring-pam gnome-online-accounts gnome-session gnome-settings-daemon gnome-shell gnome-themes-standard gnu-free-fonts-common gnu-free-mono-fonts gnu-free-sans-fonts gnu-free-serif-fonts gnupg2 gnuplot gnuplot-common gnutls gobject-introspection google-noto-emoji-color-fonts gpgme gpm-libs gpsbabel grace grace-devel GraphicsMagick GraphicsMagick-c++ graphite2 graphite2-devel graphviz graphviz-devel graphviz-gd graphviz-tcl grep grilo groff-base grub2 grub2-common grub2-pc grub2-pc-modules grub2-tools grub2-tools-extra grub2-tools-minimal grubby gsettings-desktop-schemas gsl gsl-devel gsm gsoap gspell gssproxy gstreamer gstreamer1 gstreamer1-plugins-bad-free gstreamer1-plugins-base gstreamer-plugins-base gstreamer-tools gtk2 gtk2-devel gtk3 gtk3-devel gtksourceview3 gtk-update-icon-cache gvfs gvfs-client gzip hardlink harfbuzz harfbuzz-devel harfbuzz-icu hdf5 hdf5-devel hdf5-openmpi hdf5-openmpi-devel hdparm hicolor-icon-theme hiera hostname htop httpd httpd-tools hunspell hunspell-en-US hwdata hwloc hwloc-devel hwloc-libs hyphen ibacm ibus ibus-gtk2 ibus-gtk3 ibus-libs ibus-setup ibutils ibutils-libs ilmbase ImageMagick ImageMagick-perl infiniband-diags infinipath-psm info initscripts intltool iperf ipmitool iproute iprutils ipset ipset-libs iptables iptables-services iputils irqbalance iso-codes jansson jasper-libs java-1.7.0-openjdk java-1.7.0-openjdk-devel java-1.7.0-openjdk-headless java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless javapackages-tools jbigkit-libs jnettop jq json-c json-glib kbd kbd-legacy kbd-misc kernel kernel kernel kernel-abi-whitelists kernel-debug kernel-debug kernel-debug kernel-debug-devel kernel-devel kernel-devel kernel-devel kernel-doc kernel-headers kernel-tools kernel-tools-libs kernel-tools-libs-devel kexec-tools keyutils keyutils-libs keyutils-libs-devel kmod kmod-libs kpartx krb5-devel krb5-libs krb5-workstation ksh lapack lapack-devel lasi lcgdm-libs lcms2 ldns less lfc-libs lftp libacl libaec libaec-devel libaio libappstream-glib libarchive libassuan libasyncns libatasmart libattr libattr libbasicobjects libblkid libblockdev libblockdev-crypto libblockdev-fs libblockdev-loop libblockdev-mdraid libblockdev-part libblockdev-swap libblockdev-utils libbluray libbytesize libcanberra libcanberra-gtk3 libcap libcap libcap-devel libcap-ng libcap-ng libcdio libcdio-paranoia libcgroup libcgroup-pam libcgroup-tools libcollection libcom_err libcom_err-devel libconfig libcroco libcurl libcurl-devel libdaemon libdap libdb libdb libdb-cxx libdb-devel libdb-utils libdhash libdrm libdrm-devel libdvdnav libdvdread libdwarf libedit libepoxy libepoxy-devel liberation-fonts-common liberation-mono-fonts liberation-sans-fonts libestr libevdev libevent libexif libfabric libfastjson libffi libffi-devel libfontenc libgcab1 libgcc libgcc libgcrypt libgcrypt libgcrypt-devel libgdata libgdiplus libgee libgeotiff libgfortran libglvnd libglvnd-core-devel libglvnd-devel libglvnd-egl libglvnd-gles libglvnd-glx libglvnd-opengl libgnomekbd libgnome-keyring libgomp libgpg-error libgpg-error libgpg-error-devel libgs libgta libgtop2 libgudev1 libgusb libgweather libgxps libhugetlbfs libhugetlbfs-utils libibumad libibverbs libibverbs-utils libical libICE libICE-devel libicu libicu-devel libidn libimobiledevice libini_config libinput libipa_hbac libjpeg-turbo libjpeg-turbo-devel libkadm5 libldb liblockfile libmng libmnl libmodman libmount libmpc libmpcdec libmspack libndp libnet libnet-devel libnetfilter_conntrack libnfnetlink libnfsidmap libnl3 libnl3-cli libnl3-devel libnma libnm-gtk libnotify liboauth libogg libotf libpaper libpath_utils libpcap libpciaccess libpciaccess-devel libpeas libpeas-gtk libpeas-loader-python libpipeline libplist libpmem libpmemblk libpng libpng12 libpng-devel libproxy libpsm2 libpwquality libquadmath libquadmath-devel librados2 librbd1 librdmacm librdmacm-utils libref_array libreport-filesystem libRmath libRmath-devel librsvg2 librsvg2-devel libseccomp libsecret libselinux libselinux libselinux-devel libselinux-python libselinux-ruby libselinux-utils libsemanage libsepol libsepol libsepol-devel libsigc++20 libSM libsmartcols libsmbclient libSM-devel libsndfile libsoup libspectre libsrtp libss libssh2 libsss_idmap libstdc++ libstdc++ libstdc++-devel libsysfs libtalloc libtasn1 libtdb libteam libtevent libthai libtheora libtiff libtiff-devel libtirpc libtool libtool-ltdl libudisks2 libunistring libusb libusbmuxd libusbx libuser libutempter libuuid libuuid-devel libva-vdpau-driver libvdpau libverto libverto-devel libverto-tevent libvisual libvorbis libwacom libwacom-data libwayland-client libwayland-cursor libwayland-egl libwayland-server libwbclient libwebp libwmf-lite libX11 libX11 libX11-common libX11-devel libXau libXau libXau-devel libXaw libXaw-devel libxcb libxcb libxcb-devel libXcomposite libXcomposite-devel libXcursor libXcursor-devel libXdamage libXdamage-devel libXdmcp libXevie libXext libXext libXext-devel libXfixes libXfixes-devel libXfont libXfont2 libXft libXft-devel libXi libXi-devel libXinerama libXinerama-devel libxkbcommon libxkbcommon-devel libxkbcommon-x11 libxkbfile libxklavier libxml2 libxml2-devel libxml2-python libXmu libXmu-devel libXp libXp-devel libXpm libXpm-devel libXrandr libXrandr-devel libXrender libXrender-devel libXScrnSaver libxshmfence libxslt libxslt-devel libXt libXt-devel libXtst libXv libXv-devel libXvMC libXxf86misc libXxf86vm libXxf86vm-devel libyaml libyaml-devel links linux-firmware lksctp-tools lldpad llvm-private Lmod lm_sensors lm_sensors-libs logrotate lsof lsscsi ltrace lua lua-bitop lua-devel lua-filesystem lua-json lua-lpeg lua-posix lua-term lvm2 lvm2-libs lz4 lz4 lzo lzo-devel lzo-minilzo m17n-db m17n-lib m4 mailcap mailx make man-db mariadb mariadb-libs mc mcelog md5deep mdadm mercurial mesa-dri-drivers mesa-filesystem mesa-khr-devel mesa-libEGL mesa-libEGL-devel mesa-libgbm mesa-libgbm-devel mesa-libGL mesa-libglapi mesa-libGL-devel mesa-libGLES mesa-libGLES-devel mesa-libGLU mesa-libGLU-devel mesa-libGLw mesa-libGLw-devel mesa-libOSMesa mesa-libOSMesa-devel mesa-libxatracker mesa-private-llvm microcode_ctl mmv mobile-broadband-provider-info ModemManager-glib mokutil mosh motif motif-devel mozilla-filesystem mozjs17 mozjs24 mozjs52 mpfr mpfr-devel mstflint mtdev munge munge-devel munge-libs mutter nagios-common nagios-plugins nagios-plugins-all nagios-plugins-breeze nagios-plugins-by_ssh nagios-plugins-cluster nagios-plugins-dhcp nagios-plugins-dig nagios-plugins-disk nagios-plugins-disk_smb nagios-plugins-dns nagios-plugins-dummy nagios-plugins-file_age nagios-plugins-flexlm nagios-plugins-fping nagios-plugins-game nagios-plugins-hpjd nagios-plugins-http nagios-plugins-icmp nagios-plugins-ide_smart nagios-plugins-ircd nagios-plugins-ldap nagios-plugins-load nagios-plugins-log nagios-plugins-mailq nagios-plugins-mrtg nagios-plugins-mrtgtraf nagios-plugins-mysql nagios-plugins-nagios nagios-plugins-nt nagios-plugins-ntp nagios-plugins-ntp-perl nagios-plugins-nwstat nagios-plugins-oracle nagios-plugins-overcr nagios-plugins-perl nagios-plugins-pgsql nagios-plugins-ping nagios-plugins-procs nagios-plugins-real nagios-plugins-rpc nagios-plugins-sensors nagios-plugins-smtp nagios-plugins-snmp nagios-plugins-ssh nagios-plugins-swap nagios-plugins-tcp nagios-plugins-time nagios-plugins-ups nagios-plugins-users nagios-plugins-wave nano ncurses ncurses-base ncurses-devel ncurses-libs ndctl-libs nedit neon netcdf netcdf-cxx netcdf-cxx-devel netcdf-devel netcdf-fortran netcdf-fortran-devel netcdf-openmpi netcdf-openmpi-devel nethogs net-snmp-agent-libs net-snmp-libs net-snmp-utils nettle net-tools NetworkManager NetworkManager-glib NetworkManager-libnm NetworkManager-wifi newt newt-python nfs-utils NLopt NLopt-devel nmap-ncat nm-connection-editor nordugrid-arc nordugrid-arc-client nordugrid-arc-plugins-globus nordugrid-arc-plugins-needed nscd nspr nss nss-pam-ldapd nss-pem nss-softokn nss-softokn-freebl nss-softokn-freebl nss-sysinit nss-tools nss-util ntp ntpdate numactl numactl-devel numactl-libs numpy ocl-icd oddjob oddjob-mkhomedir ogdi oniguruma openblas-openmp openblas-Rblas opencl-filesystem OpenEXR-libs OpenIPMI OpenIPMI-libs OpenIPMI-modalias openjpeg2 openjpeg-libs openldap openmpi openmpi-devel openslide opensm opensm-libs openssh openssh-clients openssh-server openssl openssl-devel openssl-libs opus orc os-prober p11-kit p11-kit-trust pakchois pam pam pam-devel pandoc pango pango-devel parted passwd patch pbzip2 pciutils pciutils-libs pcre pcre pcre2 pcre2-devel pcre2-utf16 pcre2-utf32 pcre-devel pcsc-lite-libs perf perftest perl perl-Archive-Extract perl-Archive-Tar perl-Authen-SASL perl-autodie perl-B-Lint perl-Business-ISBN perl-Business-ISBN-Data perl-Carp perl-CGI perl-Compress-Raw-Bzip2 perl-Compress-Raw-Zlib perl-constant perl-Convert-ASN1 perl-Convert-BinHex perl-core perl-CPAN perl-CPAN-Meta perl-CPAN-Meta-Requirements perl-CPAN-Meta-YAML perl-CPANPLUS perl-CPANPLUS-Dist-Build perl-Data-Dumper perl-Data-OptList perl-DBD-SQLite perl-DB_File perl-DBI perl-DBIx-Simple perl-devel perl-Devel-GlobalDestruction perl-Digest perl-Digest-HMAC perl-Digest-MD5 perl-Digest-SHA perl-Digest-SHA1 perl-Digest-SHA3 perl-Dist-CheckConflicts perl-Email-Date-Format perl-Email-Simple perl-Encode perl-Encode-Locale perl-Env perl-Error perl-Exporter perl-ExtUtils-CBuilder perl-ExtUtils-Embed perl-ExtUtils-Install perl-ExtUtils-MakeMaker perl-ExtUtils-Manifest perl-ExtUtils-ParseXS perl-FCGI perl-File-CheckTree perl-File-FcntlLock perl-File-Fetch perl-File-Listing perl-File-NFSLock perl-File-Path perl-File-Remove perl-File-Temp perl-Filter perl-Font-AFM perl-Getopt-Long perl-Git perl-GSSAPI perl-HTML-Format perl-HTML-Parser perl-HTML-Tagset perl-HTML-Tree perl-HTTP-Cookies perl-HTTP-Daemon perl-HTTP-Date perl-HTTP-Message perl-HTTP-Negotiate perl-HTTP-Tiny perl-Import-Into perl-interpreter perl-IO-Compress perl-IO-HTML perl-IO-Socket-INET6 perl-IO-Socket-IP perl-IO-Socket-SSL perl-IO-stringy perl-IO-Zlib perl-IPC-Cmd perl-JSON perl-JSON-PP perl-LDAP perl-libintl perl-libs perl-libwww-perl perl-List-MoreUtils perl-Locale-Codes perl-Locale-Maketext perl-Locale-Maketext-Simple perl-local-lib perl-Log-Message perl-Log-Message-Simple perl-LWP-MediaTypes perl-macros perl-Mail-Box perl-Mail-IMAPClient perl-Mail-Sendmail perl-MailTools perl-Mail-Transport-Dbx perl-MIME-Lite perl-MIME-tools perl-MIME-Types perl-Module-Build perl-Module-CoreList perl-Module-Load perl-Module-Load-Conditional perl-Module-Loaded perl-Module-Metadata perl-Module-Pluggable perl-Mozilla-CA perl-Net-Daemon perl-Net-HTTP perl-Net-LibIDN perl-NetPacket perl-Net-Pcap perl-Net-SMTP-SSL perl-Net-SSLeay perl-NKF perl-Object-Accessor perl-Object-Realize-Later perl-Package-Constants perl-Package-Generator perl-Parallel-ForkManager perl-Params-Check perl-Params-Util perl-parent perl-Parse-CPAN-Meta perl-Parse-RecDescent perl-PathTools perl-Perl-OSType perl-PlRPC perl-Pod-Checker perl-Pod-Escapes perl-Pod-LaTeX perl-podlators perl-Pod-Parser perl-Pod-Perldoc perl-Pod-Simple perl-Pod-Usage perl-Scalar-List-Utils perl-Socket perl-Socket6 perl-srpm-macros perl-Storable perl-Sub-Exporter perl-Sub-Exporter-Progressive perl-Sub-Install perl-Sys-Syslog perl-TermReadKey perl-Term-UI perl-Test-Harness perl-Test-Simple perl-TeX-Hyphen perl-Text-Autoformat perl-Text-ParseWords perl-Text-Reform perl-Text-Soundex perl-Text-Unidecode perl-Thread-Queue perl-threads perl-threads-shared perl-TimeDate perl-Time-HiRes perl-Time-Local perl-Time-Piece perl-URI perl-User-Identity perl-utf8-all perl-version perl-Version-Requirements perl-WWW-RobotRules perl-XML-Filter-BufferText perl-XML-NamespaceSupport perl-XML-Parser perl-XML-SAX-Base perl-XML-SAX-Writer pigz pinentry pinentry-gtk pixman pixman-devel pkgconfig plplot plplot-libs plymouth plymouth-core-libs plymouth-scripts po-debconf policycoreutils polkit polkit-pkla-compat poppler poppler-data poppler-glib poppler-utils popt popt-devel postfix postgresql-libs powertop procps-ng proj protobuf protobuf-c protobuf-c-compiler protobuf-c-devel protobuf-compiler protobuf-devel protobuf-python pslib psmisc pth pugixml pulseaudio pulseaudio-gdm-hooks pulseaudio-libs pulseaudio-libs-glib2 pulseaudio-module-bluetooth puppet pycairo pygpgme pyliblzma pyparsing pypy pypy-devel pypy-libs pytalloc python python2-futures python2-html2text python2-pip python2-psutil python2-pyatspi python2-rpm-macros python3 python34 python34-chardet python34-idna python34-libs python34-pysocks python34-PyYAML python34-requests python34-rfc3986 python34-setuptools python34-six python34-urllib3 python36-chardet python36-idna python36-pysocks python36-requests python36-rfc3986 python36-six python36-urllib3 python3-devel python3-html2text python3-libs python3-pip python3-rpm-generators python3-rpm-macros python3-setuptools python-backports python-backports-ssl_match_hostname python-chardet python-configobj python-configparser python-dateutil python-decorator python-devel python-empy python-firewall python-gobject python-gobject-base python-iniparse python-ipaddress python-javapackages python-kitchen python-ldap python-libs python-linux-procfs python-lxml python-nose python-perf python-pycurl python-pyudev python-requests python-rpm-macros python-schedutils python-setuptools python-six python-slip python-slip-dbus python-srpm-macros python-sssdconfig python-urlgrabber python-urllib3 pyxattr PyYAML qhull qpdf-libs qperf qrencode-libs qstat qt qt5-qtbase qt5-qtbase-common qt5-qtbase-devel qt5-qtbase-gui qt5-rpm-macros qt-devel qt-settings qtwebkit qtwebkit-devel qt-x11 quota quota-nls R rapidjson-devel raptor2 raptor2-devel rasqal rasqal-devel R-core R-core-devel R-devel rdma-core rdma-core rdma-core-devel readline readline-devel realmd redhat-rpm-config redland rest R-java R-java-devel rootfiles rpcbind rpm rpm-build rpm-build-libs rpm-libs rpm-python rsync rsyslog rsyslog-mmjsonparse rtkit ruby ruby-augeas rubygem-bigdecimal rubygem-io-console rubygem-json rubygem-psych rubygem-rdoc rubygem-rgen rubygems ruby-irb ruby-libs ruby-shadow samba-client samba-client-libs samba-common samba-common-libs sbc screen SDL sed selinux-policy selinux-policy-targeted setup shadow-utils shapelib shared-mime-info singularity slang smartmontools snappy socat sos sound-theme-freedesktop soundtouch speex sqlite sqlite-devel squashfs-tools srm-ifce startup-notification strace subversion subversion-libs sudo SuperLU swig sysstat systemd systemd-devel systemd-libs systemd-libs systemd-python systemd-sysv systemtap systemtap-client systemtap-devel systemtap-runtime systemtap-sdt-devel sysvinit-tools t1lib tar tbb tbb-devel tcl tcl-devel tcllib tcpdump tcp_wrappers tcp_wrappers-libs tcsh teamd telepathy-filesystem telepathy-glib telepathy-logger telnet texinfo texinfo-tex texlive texlive-ae texlive-algorithms texlive-amscls texlive-amsfonts texlive-amsmath texlive-anysize texlive-attachfile texlive-avantgar texlive-babel texlive-babelbib texlive-base texlive-beamer texlive-bera texlive-beton texlive-bibtex texlive-bibtex-bin texlive-bookman texlive-booktabs texlive-breakurl texlive-caption texlive-carlisle texlive-charter texlive-chngcntr texlive-cite texlive-cm texlive-cmap texlive-cmextra texlive-cm-super texlive-collection-basic texlive-collection-documentation-base texlive-collection-fontsrecommended texlive-collection-latex texlive-collection-latexrecommended texlive-colortbl texlive-courier texlive-crop texlive-csquotes texlive-ctable texlive-currfile texlive-dvipdfm texlive-dvipdfm-bin texlive-dvipdfmx texlive-dvipdfmx-bin texlive-dvipdfmx-def texlive-dvips texlive-dvips-bin texlive-ec texlive-enctex texlive-enumitem texlive-epsf texlive-eso-pic texlive-etex texlive-etex-pkg texlive-etoolbox texlive-euler texlive-euro texlive-eurosym texlive-extsizes texlive-fancybox texlive-fancyhdr texlive-fancyref texlive-fancyvrb texlive-filecontents texlive-filehook texlive-fix2col texlive-float texlive-fontspec texlive-footmisc texlive-fp texlive-fpl texlive-geometry texlive-glyphlist texlive-graphics texlive-gsftopk texlive-gsftopk-bin texlive-helvetic texlive-hyperref texlive-hyphen-base texlive-hyph-utf8 texlive-ifetex texlive-ifluatex texlive-ifxetex texlive-index texlive-jknapltx texlive-kastrup texlive-koma-script texlive-kpathsea texlive-kpathsea-bin texlive-kpathsea-lib texlive-l3experimental texlive-l3kernel texlive-l3packages texlive-latex texlive-latex-bin texlive-latex-bin-bin texlive-latexconfig texlive-latex-fonts texlive-listings texlive-lm texlive-lm-math texlive-ltxmisc texlive-lua-alt-getopt texlive-lualatex-math texlive-luaotfload texlive-luaotfload-bin texlive-luatex texlive-luatexbase texlive-luatex-bin texlive-makeindex texlive-makeindex-bin texlive-marginnote texlive-marvosym texlive-mathpazo texlive-mdwtools texlive-memoir texlive-metafont texlive-metafont-bin texlive-metalogo texlive-mflogo texlive-mfnfss texlive-mfware texlive-mfware-bin texlive-mh texlive-microtype texlive-misc texlive-mparhack texlive-mptopdf texlive-mptopdf-bin texlive-ms texlive-multido texlive-natbib texlive-ncntrsbk texlive-ntgclass texlive-oberdiek texlive-palatino texlive-paralist texlive-parallel texlive-parskip texlive-pdfpages texlive-pdftex texlive-pdftex-bin texlive-pdftex-def texlive-pgf texlive-plain texlive-powerdot texlive-psfrag texlive-pslatex texlive-psnfss texlive-pspicture texlive-pst-3d texlive-pst-blur texlive-pst-coil texlive-pst-eps texlive-pst-fill texlive-pst-grad texlive-pst-math texlive-pst-node texlive-pst-plot texlive-pstricks texlive-pstricks-add texlive-pst-slpe texlive-pst-text texlive-pst-tree texlive-pxfonts texlive-qstest texlive-rcs texlive-rotating texlive-rsfs texlive-sansmath texlive-sauerj texlive-scheme-basic texlive-section texlive-seminar texlive-sepnum texlive-setspace texlive-showexpl texlive-soul texlive-subfig texlive-symbol texlive-tetex texlive-tetex-bin texlive-tex texlive-tex-bin texlive-texconfig texlive-texconfig-bin texlive-tex-gyre texlive-tex-gyre-math texlive-texlive.infra texlive-texlive.infra-bin texlive-textcase texlive-thumbpdf texlive-thumbpdf-bin texlive-times texlive-tipa texlive-tools texlive-txfonts texlive-type1cm texlive-typehtml texlive-ucs texlive-underscore texlive-unicode-math texlive-url texlive-utopia texlive-varwidth texlive-wasy texlive-wasysym texlive-xcolor texlive-xdvi texlive-xdvi-bin texlive-xkeyval texlive-xunicode texlive-zapfchan texlive-zapfding tig tigervnc tigervnc-icons tigervnc-license tigervnc-server tigervnc-server-minimal time tix tk tk-devel tkinter tmpwatch tmux totem-pl-parser traceroute tre tre-common tre-devel tree trousers ttmkfdir tuned turbojpeg tzdata tzdata-java ucx udisks2 udunits2 unixODBC unzip upower urw-base35-bookman-fonts urw-base35-c059-fonts urw-base35-d050000l-fonts urw-base35-fonts urw-base35-fonts-common urw-base35-fonts-legacy urw-base35-gothic-fonts urw-base35-nimbus-mono-ps-fonts urw-base35-nimbus-roman-fonts urw-base35-nimbus-sans-fonts urw-base35-p052-fonts urw-base35-standard-symbols-ps-fonts urw-base35-z003-fonts userspace-rcu ustr util-linux uuid uuid-devel valgrind vim-common vim-enhanced vim-filesystem vim-minimal vino VirtualGL virt-what volume_key-libs voms vte3 vte-profile vulkan-filesystem w3m wayland-devel wayland-protocols-devel webkitgtk3 webkitgtk4 webkitgtk4-jsc webkitgtk4-plugin-process-gtk2 webrtc-audio-processing wget which wpa_supplicant wxBase wxBase3 wxGTK wxGTK3 wxGTK-devel wxGTK-gl wxGTK-media xbae xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xclip xdg-desktop-portal xdg-desktop-portal-gtk xdg-utils xerces-c xerces-c-devel xfsprogs xinetd xkeyboard-config xml-common xmlsec1 xmlsec1-openssl xorg-x11-apps xorg-x11-drivers xorg-x11-drv-ati xorg-x11-drv-dummy xorg-x11-drv-evdev xorg-x11-drv-evdev-devel xorg-x11-drv-fbdev xorg-x11-drv-intel xorg-x11-drv-intel-devel xorg-x11-drv-keyboard xorg-x11-drv-libinput xorg-x11-drv-libinput-devel xorg-x11-drv-mouse xorg-x11-drv-mouse-devel xorg-x11-drv-nouveau xorg-x11-drv-openchrome xorg-x11-drv-openchrome-devel xorg-x11-drv-qxl xorg-x11-drv-synaptics xorg-x11-drv-synaptics-devel xorg-x11-drv-v4l xorg-x11-drv-vesa xorg-x11-drv-vmmouse xorg-x11-drv-vmware xorg-x11-drv-void xorg-x11-drv-wacom xorg-x11-drv-wacom-devel xorg-x11-fonts-75dpi xorg-x11-fonts-ISO8859-1-75dpi xorg-x11-fonts-Type1 xorg-x11-font-utils xorg-x11-proto-devel xorg-x11-server-common xorg-x11-server-devel xorg-x11-server-utils xorg-x11-server-Xorg xorg-x11-server-Xvfb xorg-x11-util-macros xorg-x11-xauth xorg-x11-xbitmaps xorg-x11-xinit xorg-x11-xkb-utils xrootd-client-libs xrootd-libs xterm xz xz-devel xz-libs xz-libs xz-lzma-compat yajl yum yum-metadata-parser yum-plugin-auto-update-debug-info yum-plugin-fastestmirror yum-plugin-priorities yum-plugin-versionlock yum-utils zenity zip zlib zlib zlib-devel zsh zstd zziplib
    
    # save build time
    SINGULARITY_BUILD_DATE=`date`
    echo "export SINGULARITY_BUILD_DATE=\"${SINGULARITY_BUILD_DATE}\"" >> $SINGULARITY_ENVIRONMENT

    # clean yum cache
    yum clean all

    


%runscript

    #!/bin/sh
    OCI_ENTRYPOINT='/uppmax_init/help_message'
    OCI_CMD='"/bin/bash"'
    CMDLINE_ARGS=""
    # prepare command line arguments for evaluation
    for arg in "$@"; do
        CMDLINE_ARGS="${CMDLINE_ARGS} \"$arg\""
    done

    # ENTRYPOINT only - run entrypoint plus args
    if [ -z "$OCI_CMD" ] && [ -n "$OCI_ENTRYPOINT" ]; then
        if [ $# -gt 0 ]; then
            SINGULARITY_OCI_RUN="${OCI_ENTRYPOINT} ${CMDLINE_ARGS}"
        else
            SINGULARITY_OCI_RUN="${OCI_ENTRYPOINT}"
        fi
    fi

    # CMD only - run CMD or override with args
    if [ -n "$OCI_CMD" ] && [ -z "$OCI_ENTRYPOINT" ]; then
        if [ $# -gt 0 ]; then
            SINGULARITY_OCI_RUN="${CMDLINE_ARGS}"
        else
            SINGULARITY_OCI_RUN="${OCI_CMD}"
        fi
    fi

    # ENTRYPOINT and CMD - run ENTRYPOINT with CMD as default args
    # override with user provided args
    if [ $# -gt 0 ]; then
        SINGULARITY_OCI_RUN="${OCI_ENTRYPOINT} ${CMDLINE_ARGS}"
    else
        SINGULARITY_OCI_RUN="${OCI_ENTRYPOINT} ${OCI_CMD}"
    fi

    # Evaluate shell expressions first and set arguments accordingly,
    # then execute final command as first container process
    eval "set ${SINGULARITY_OCI_RUN}"
    exec "$@"


    
