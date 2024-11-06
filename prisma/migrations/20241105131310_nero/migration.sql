-- CreateTable
CREATE TABLE "Aluno" (
    "id" TEXT NOT NULL,
    "nomeAluno" TEXT NOT NULL,
    "emailAluno" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "dataNascimento" TIMESTAMP(3),
    "dataMatricula" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "progresso" INTEGER DEFAULT 0,
    "notificacoesAtivas" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BookSelection" (
    "id" TEXT NOT NULL,
    "alunoId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "isSelected" BOOLEAN NOT NULL,

    CONSTRAINT "BookSelection_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_emailAluno_key" ON "Aluno"("emailAluno");

-- AddForeignKey
ALTER TABLE "BookSelection" ADD CONSTRAINT "BookSelection_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "Aluno"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
