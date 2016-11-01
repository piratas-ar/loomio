
es :=  config/locales/es.yml $(wildcard config/locales/*.es.yml)
es_ahr := $(patsubst %.yml,%-AHR.yml,$(es))

$(es_ahr): %-AHR.yml: $(es)
	sed -r -e 's/Grupo/Barco/g' -e 's/grupo/barco/g' \
	       -e 's/Miembro/Pirata/g' -e 's/miembro/pirata/g' \
				 -e 's/^es:$$/es-AHR:/' \
				 $*.yml >$@

editar:
	vim -p $(es)

ahr: $(es_ahr)
