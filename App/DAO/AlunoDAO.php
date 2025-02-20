<?php

namespace App\Dao;

use App\Model\Aluno;
class AlunoDAO
{
    public function save(Aluno $model) : Aluno
    {
        return ($model ->id == null) ? $this->insert($model) : $this->update($model);
    }

    public function insert(Aluno $Model): Aluno
    {
        return new Aluno();
    }

    public function update(): Aluno
    {
        return new Aluno(); 
    }

    public function selectById(int $id): ?Aluno
    {
        return new Aluno();  
    }

    public function select(): array
    {
        return []; 
    }


    public function delete(int $id) : bool
    {
        return false ;  
    }

}