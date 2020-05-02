all: admin cons contract crim equity land tort

travis: admin

admin: .template/template.tex .template/metadata.yaml $(wildcard openlex-admin/*.md)
	pandoc -N --variable title="Administrative Law" --template=$^ --latex-engine=xelatex --toc -o openlex-admin.pdf

cons: .template/template.tex $(wildcard openlex-cons/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Constitutional Law" .template/metadata.yaml $$CONS --latex-engine=xelatex --toc -o openlex-cons.pdf

contract: .template/template.tex $(wildcard openlex-contract/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Law of Contract" .template/metadata.yaml $$CONTRACT --latex-engine=xelatex --toc -o openlex-contract.pdf

crim: .template/template.tex $(wildcard openlex-crim/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Criminal Law" .template/metadata.yaml $$CRIM --latex-engine=xelatex --toc -o openlex-crim.pdf

equity: .template/template.tex $(wildcard openlex-equity/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Equity and Trust" .template/metadata.yaml $$EQUITY --latex-engine=xelatex --toc -o openlex-equity.pdf

land: .template/template.tex $(wildcard openlex-land/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Land Law" .template/metadata.yaml $$LAND --latex-engine=xelatex --toc -o openlex-land.pdf

tort: .template/template.tex $(wildcard openlex-tort/*.md) .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Tort Law" .template/metadata.yaml $$TORT --latex-engine=xelatex --toc -o openlex-tort.pdf
