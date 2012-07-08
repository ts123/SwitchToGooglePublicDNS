
SRC=main.scpt
DST=SwitchToGooglePublicDNS.app

all: ${DST}
${DST}:
	osacompile -o ${DST} ${SRC}
run:
	osascript ${SRC}
test: all
	open ${DST}
install: all
	cp -aR ${DST} /Applications/
clean:
	rm -rf ${DST}
cleanall: clean
	rm -rf /Applications/${DST}

