
MANIFEST_FILES = complex.html ray.html portrait.html

appcache: $(MANIFEST_FILES)
	echo 'CACHE MANIFEST' > appcache
	echo -n '# ' >> appcache
	cat $(MANIFEST_FILES) | md5sum | cut -d' ' -f1 >> appcache
	ls $(MANIFEST_FILES) >> appcache
