pathOfThisMakefile=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))

buildFolder=${pathOfThisMakefile}/build
includes=$(wildcard ${pathOfThisMakefile}/*.liy)
sources=$(wildcard ${pathOfThisMakefile}/songs/*/main.ly)
targets=$(foreach source,${sources},${buildFolder}/$(notdir $(realpath $(dir ${source}))).pdf)

# default:
	# echo test: $(foreach source,${sources},$(notdir $(realpath $(dir ${source}))))
	# echo sources: $(sources)
	# echo targets: $(targets)

default: $(targets)

${buildFolder}/%.pdf: ${pathOfThisMakefile}/songs/%/main.ly ./*.liy songs/%/*.liy ${buildFolder}
	lilypond  --output="$(basename $@)" --include="$(realpath $(dir $<))" "$<"

${buildFolder}:
	mkdir --parents "${buildFolder}"
	