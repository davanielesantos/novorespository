#!/bin/bash
# este script faz conversão de imagens
# script-for.sh
#
# autor: Davaniele dos santos Carneiro
# Leticia e Raiele esteve aqui

echo "iniciando"
cd imagens-livros
for imagem in *.jpg
do
	echo $imagem
	img_sem_ext=$(ls $imagem | awk -F. '{print $1}')
	echo $img_sem_ext
	convert $imagem $img_sem_ext.png
done
cd ..
echo "finalizando"
