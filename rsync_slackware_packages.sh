
MAXSIZE=${MAXSIZE:-500k}
BWLIM=${BWLIM:-100k}

function rmlockNexit() {

    rm /var/lock/slackpkg.$$ &>/dev/null
    exit
}

function RSYNCSLACKWARE() {

rsync $@ --bwlimit=$BWLIM --info=progress -acvz --max-size $MAXSIZE --exclude "source" --del

}

trap 'rmlockNexit' 2 14 15          # trap CTRL+C and kill

if [ "$(ls /var/lock/slackpkg.* 2>/dev/null)" ] ; then
    echo -e "\
\nAnother instance of slackpkg is running. If this is not correct, you can\n\
remove /var/lock/slackpkg.* files and run slackpkg again.\n"

    rmlockNexit

    else
      touch /var/lock/slackpkg.$$
    fi

echo "Bandwith = $BWLIM and Maximun filesize = $MAXSIZE"

RSYNCSLACKWARE ftp.slackware.pl::slackware/slackware64-current/slackware64/ /var/cache/packages/slackware64
RSYNCSLACKWARE ftp.slackware.pl::slackware/slackware64-current/patches/ /var/cache/packages/patches
RSYNCSLACKWARE ftp.slackware.pl::slackware/slackware64-current/testing/ /var/cache/packages/testing
RSYNCSLACKWARE ftp.slackware.pl::slackware/slackware64-current/extra/ /var/cache/packages/extra

RSYNCSLACKWARE rsync://bear.alienbase.nl/mirrors/people/alien/sbrepos/current/x86_64/ /var/cache/packages/SLACKPKGPLUS_alienbob
RSYNCSLACKWARE rsync://bear.alienbase.nl/mirrors/people/alien/restricted_sbrepos/current/x86_64/ /var/cache/packages/SLACKPKGPLUS_restricted
RSYNCSLACKWARE rsync://bear.alienbase.nl/mirrors/alien-kde//current/latest/x86_64/ /var/cache/packages/SLACKPKGPLUS_ktown

rmlockNexit
