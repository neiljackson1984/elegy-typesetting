#same as dir, escept it returns a result with the trailing slash omitted.
unslashedDir=$(patsubst %/,%,$(dir $(1)))
getFullyQualifiedWindowsStylePath=$(shell cygpath --windows --absolute "$(1)")
pathOfThisMakefile=$(call unslashedDir,$(lastword $(MAKEFILE_LIST)))
# SHELL=sh

buildFolder=${pathOfThisMakefile}/build
includes=$(wildcard ${pathOfThisMakefile}/*.liy)
sources=$(wildcard ${pathOfThisMakefile}/songs/*/main.ly)
pdfTargets=$(foreach source,${sources},${buildFolder}/$(notdir $(call unslashedDir,${source})).pdf)
midiTargets=$(foreach source,${sources},${buildFolder}/$(notdir $(call unslashedDir,${source})).midi)

# default:
	# @echo pathOfThisMakefile: $(pathOfThisMakefile)
	# @echo test: $(foreach source,${sources},$(notdir $(call unslashedDir,${source})))
	# @echo sources: $(sources)
	# @echo pdfTargets: $(pdfTargets)
	# @echo midiTargets: $(midiTargets)
	# @echo firstword of pdfTargets: $(firstword $(pdfTargets))

# default: $(pdfTargets)
default: $(firstword $(pdfTargets))

${buildFolder}/%.pdf: ${pathOfThisMakefile}/songs/%/main.ly ${pathOfThisMakefile}/songs/%/*.liy  ${includes} | ${buildFolder}
	@echo "====== BUILDING $@ from $< ======= "
	lilypond  --output="$(call getFullyQualifiedWindowsStylePath,$(basename $@))" --include="$(call getFullyQualifiedWindowsStylePath,$(dir $<))" --include="$(call getFullyQualifiedWindowsStylePath,${pathOfThisMakefile})" --evaluate='(begin (define-public makeLayout #t)  (define-public makeMidi #t) )' "$(call getFullyQualifiedWindowsStylePath,$<)"
	
${buildFolder}/%.mid: ${pathOfThisMakefile}/songs/%/main.ly ${pathOfThisMakefile}/songs/%/*.liy  ${includes} | ${buildFolder}
	@echo "====== BUILDING $@ ======= "
	lilypond  --output="$(basename $@)" --include="$(call unslashedDir,$<)" --include="${pathOfThisMakefile}" -e '(define-public makeMidi #t)' "$<"

${buildFolder}:
	mkdir --parents "${buildFolder}"
#buildFolder, when included as a prerequisite for rules, should be declared as an order-only prerequisites (by placing it to the right of a "|" character in the 
# list of prerequisites.  See https://www.gnu.org/software/make/manual/html_node/Prerequisite-Types.html 
	