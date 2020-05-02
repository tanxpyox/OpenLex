all: admin cons contract crim equity land tort

travis: contract

admin: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Administrative Law" .template/metadata.yaml $$ADMIN --latex-engine=xelatex --toc -o openlex-admin.pdf

cons: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Constitutional Law" .template/metadata.yaml $$CONS --latex-engine=xelatex --toc -o openlex-cons.pdf

contract: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Law of Contract" .template/metadata.yaml $$CONTRACT --latex-engine=xelatex --toc -o openlex-contract.pdf

crim: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Criminal Law" .template/metadata.yaml $$CRIM --latex-engine=xelatex --toc -o openlex-crim.pdf

equity: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Equity and Trust" .template/metadata.yaml $$EQUITY --latex-engine=xelatex --toc -o openlex-equity.pdf

land: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Land Law" .template/metadata.yaml $$LAND --latex-engine=xelatex --toc -o openlex-land.pdf

tort: .template/template.tex .template/metadata.yaml
	pandoc -N --template=.template/template.tex --variable title="Tort Law" .template/metadata.yaml $$TORT --latex-engine=xelatex --toc -o openlex-tort.pdf
