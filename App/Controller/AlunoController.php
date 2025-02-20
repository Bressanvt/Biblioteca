<?php

namespace App\Controller;

use App\Model\Aluno;

class AlunoController
{
  public static function cadastro()
  {
    echo "vou mostrar o formulario a depender...";

    $model = new Aluno();
    $model->id = 8;
    $model->nome = "Vitor";
    $model->ra = 123;
    $model->curso = "Desenvolvimento de Sistemas";
    $model->save();
  } 


  public static function listar()
  {
    echo "listagem de alunos";
    $aluno = new Aluno();
    $aluno->getAllRows();
  }

}