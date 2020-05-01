all: admin cons contract crim equity land tort

travis: contract

admin: .template/template.tex openlex-admin/openlex-admin.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Administrative Law" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-admin/openlex-admin.md --latex-engine=xelatex --toc -o openlex-admin.pdf

cons: .template/template.tex openlex-cons/openlex-cons.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Constitutional Law" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-cons/openlex-cons.md --latex-engine=xelatex --toc -o openlex-cons.pdf

contract: .template/template.tex openlex-contract/openlex-contract.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Law of Contract" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-contract/openlex-contract.md --latex-engine=xelatex --toc -o openlex-contract.pdf

crim: .template/template.tex openlex-crim/openlex-crim.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Criminal Law" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-crim/openlex-crim.md --latex-engine=xelatex --toc -o openlex-crim.pdf

equity: .template/template.tex openlex-equity/openlex-equity.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Equity and Trust" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-equity/openlex-equity.md --latex-engine=xelatex --toc -o openlex-equity.pdf

land: .template/template.tex openlex-land/openlex-land.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Land Law" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-land/openlex-land.md --latex-engine=xelatex --toc -o openlex-land.pdf

tort: .template/template.tex openlex-tort/openlex-tort.md
	pandoc -N --template=.template/template.tex --variable fontsize=12pt --variable title="Tort Law" --variable author="The Learned Contributors to OpenLex" --variable date="$BUILD_TIME" openlex-tort/openlex-tort.md --latex-engine=xelatex --toc -o openlex-tort.pdf
