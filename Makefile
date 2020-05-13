# Install Fedy

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/fedybr/

	for f in *; do [[ $$f != "plugins" ]] && cp -pr $$f $(DESTDIR)/usr/share/fedybr/; done

	install -Dpm 0755 fedybr.exec $(DESTDIR)/usr/bin/fedybr

	install -Dpm 0644 fedybr.desktop $(DESTDIR)/usr/share/applications/org.folkswithhats.fedybr.desktop
	install -Dpm 0644 fedybr.appdata.xml $(DESTDIR)/usr/share/metainfo/fedybr.appdata.xml

	install -Dpm 0644 fedybr.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedybr.svg
	install -Dpm 0644 fedybr-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedybr-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.folkswithhats.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:
	install -dm755 $(DESTDIR)/usr/share/fedybr/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/fedybr/plugins/


install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/fedybr/

	rm -f $(DESTDIR)/usr/bin/fedybr

	rm -f $(DESTDIR)/usr/share/applications/org.folkswithhats.fedybr.desktop
	rm -f $(DESTDIR)/usr/share/metainfo/fedybr.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedybr.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedybr-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.folkswithhats.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
