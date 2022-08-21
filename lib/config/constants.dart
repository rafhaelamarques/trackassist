// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';

const String APP_NAME = "Track Assist";

const String SERVER_URL = '';

// TEXTOS, TAMANHOS E CORES
const double TAMANHO_TEXTO_NOME = 48;

const Color COR_PRIMARIA = Color.fromRGBO(144, 0, 0, 1);
const Color COR_SECUNDARIA = Color.fromRGBO(217, 217, 217, 1);
const Color COR_TERCIARIA = Color.fromRGBO(249, 177, 37, 1);
const Color FORM_COLOR = Color.fromRGBO(116, 119, 124, 1);
const Color SOFT_GREY = Color(0xFFaaaaaa);
const Color GREY = Colors.grey;
const Color BLACK_GREY = Color(0xff777777);
const Color BLACK21 = Colors.black;
const Color BLACK55 = Color(0xFF555555);

const int STATUS_OK = 200;
const int STATUS_BAD_REQUEST = 400;
const int STATUS_NOT_AUTHORIZED = 403;
const int STATUS_NOT_FOUND = 404;
const int STATUS_INTERNAL_ERROR = 500;

// ERROS
const String ERROR_OCCURED = 'Um erro ocorreu, tente novamente mais tarde.';

//COORDINATES
const LatLng BELO_HORIZONTE = LatLng(-19.912998, -43.940933);
