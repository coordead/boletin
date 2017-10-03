#!/bin/sh
NOMBRE=$1

make_a_copy(){
	if [ -d ../$NOMBRE ]; then
		rm -fr ../$NOMBRE
		cp -r ../boletin ../$NOMBRE
		rm ../$NOMBRE/compress.sh
		cd ..
		compress
	else
		cp -r ../boletin ../$NOMBRE
		rm ../$NOMBRE/compress.sh
		cd ..
		compress
	fi
}

delete_folder(){
	cd ..
	rm -fr $NOMBRE
	exit
}

compress(){
	if [ -s $NOMBRE.zip ]; then
		rm $NOMBRE.zip
		echo "comprimiendo archivo $NOMBRE.zip" ;
		zip -r $NOMBRE.zip  $NOMBRE/*
		delete_folder
	else
		echo "comprimiendo archivo $NOMBRE.zip" ;
		zip -r $NOMBRE.zip $NOMBRE/*
		delete_folder
	fi
}

make_a_copy
