<?php

namespace App\Controller;

use App\Model\Aluno;

final class AlunoController
{
  public static function cadastro() : void 
  {

    $model = new Aluno();
    //$model->id = 8;
    $model->nome = "Vitor";
    $model->ra = 123;
    $model->curso = "Desenvolvimento de Sistemas";
    $model->save();
    echo"Aluno inserido";
  } 


  public static function listar() : void 
  {
    echo "listagem de alunos";
    $aluno = new Aluno();
    $lista = $aluno->getAllRows();

    var_dump($lista);
  }

}