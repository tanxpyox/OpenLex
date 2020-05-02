all: admin cons contract crim equity land tort

travis: contract

admin: .template/template.tex openlex-admin/openlex-admin.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Administrative Law" openlex-admin/openlex-admin.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-admin.pdf

cons: .template/template.tex openlex-cons/openlex-cons.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Constitutional Law" openlex-cons/openlex-cons.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-cons.pdf

contract: .template/template.tex openlex-contract/openlex-contract.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Law of Contract" openlex-contract/openlex-contract.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-contract.pdf

crim: .template/template.tex openlex-crim/openlex-crim.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Criminal Law" openlex-crim/openlex-crim.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-crim.pdf

equity: .template/template.tex openlex-equity/openlex-equity.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Equity and Trust" openlex-equity/openlex-equity.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-equity.pdf

land: .template/template.tex openlex-land/openlex-land.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Land Law" openlex-land/openlex-land.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-land.pdf

tort: .template/template.tex openlex-tort/openlex-tort.md .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Tort Law" openlex-tort/openlex-tort.md .template/metadata.yaml --latex-engine=xelatex --toc -o openlex-tort.pdf
