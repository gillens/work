outtable.txt: intable
	grep -v "Static Interface" intable > outtable.txt
	./make_cols

ping: outtable.txt
	./testping ip_list.txt

yesnoformat: outtable.txt
	./testping ip_list.txt yesnoformat > pingout.txt

all: yesnoformat

clean:
	rm outtable.txt
