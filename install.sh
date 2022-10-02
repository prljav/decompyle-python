function confirm {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;
            [Nn]*) return 1  ;;
        esac
    done
}
echo "Download pyinstxtractor in current folder and install python-uncompyle6?"
confirm && echo "Ok, installing." || exit 1
wget https://raw.githubusercontent.com/extremecoders-re/pyinstxtractor/master/pyinstxtractor.py ~
mkdir /tmp/prljavsetup
cd /tmp/prljavsetup
wget https://github.com/rocky/python-uncompyle6/archive/refs/heads/master.zip &&t unzip master.zip
cd python-uncompyle6-master
python3 setup.py install
cd ~
rm -rf /tmp/prljavsetup/
