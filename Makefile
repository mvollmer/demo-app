srpm:
	rm -rf _install
	mkdir -p _install/usr/share/cockpit/demo-app
	cp index.html manifest.json _install/usr/share/cockpit/demo-app
	mkdir -p _install/usr/share/metainfo/
	cp *.metainfo.xml *.png _install/usr/share/metainfo/
	tar -C _install/ -czf demo-app.tar.gz .
	rpmbuild -bs \
	  --define "_sourcedir `pwd`" \
          --define "_srcrpmdir `pwd`" \
          demo-app.spec
