all: admin cons contract crim equity land tort

travis: admin

admin: .template/template.tex .template/metadata.yaml $(wildcard openlex-admin/*.md)
	pandoc -N --variable title="Administrative Law" --template=$^ --latex-engine=xelatex --toc -o openlex-admin.pdf

cons: .template/template.tex .template/metadata.yaml $(wildcard openlex-cons/*.md)
	pandoc -N --variable title="Constitutional Law" --template=$^ --latex-engine=xelatex --toc -o openlex-cons.pdf

contract: .template/template.tex .template/metadata.yaml $(wildcard openlex-contract/*.md)
	pandoc -N --variable title="Law of Contract" --template=$^ --latex-engine=xelatex --toc -o openlex-contract.pdf

crim: .template/template.tex .template/metadata.yaml $(wildcard openlex-crim/*.md)
	pandoc -N --variable title="Criminal Law" --template=$^ --latex-engine=xelatex --toc -o openlex-crim.pdf

equity: .template/template.tex .template/metadata.yaml  $(wildcard openlex-equity/*.md)
	pandoc -N --variable title="Equity and Trust" --template=$^ --latex-engine=xelatex --toc -o openlex-equity.pdf

land: .template/template.tex .template/metadata.yaml $(wildcard openlex-land/*.md)
	pandoc -N --variable title="Land Law" --template=$^ --latex-engine=xelatex --toc -o openlex-land.pdf

tort: .template/template.tex .template/metadata.yaml $(wildcard openlex-tort/*.md)
	pandoc -N --variable title="Tort Law" --template=$^ --latex-engine=xelatex --toc -o openlex-tort.pdf
