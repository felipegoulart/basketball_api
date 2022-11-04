-- CreateTable
CREATE TABLE "Equipe" (
    "idequipe" SERIAL NOT NULL,

    CONSTRAINT "Equipe_pkey" PRIMARY KEY ("idequipe")
);

-- CreateTable
CREATE TABLE "Jogador" (
    "idjogador" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "equipe_idequipe" INTEGER NOT NULL,

    CONSTRAINT "Jogador_pkey" PRIMARY KEY ("idjogador")
);

-- CreateTable
CREATE TABLE "Tecnico" (
    "idtecnico" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "funcao" TEXT NOT NULL,
    "equipe_idequipe" INTEGER NOT NULL,

    CONSTRAINT "Tecnico_pkey" PRIMARY KEY ("idtecnico")
);

-- CreateTable
CREATE TABLE "Cidade" (
    "idcidade" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "equipe_idequipe" INTEGER NOT NULL,

    CONSTRAINT "Cidade_pkey" PRIMARY KEY ("idcidade")
);

-- CreateTable
CREATE TABLE "Jogo" (
    "equipe_casa" INTEGER NOT NULL,
    "equipe_visitante" INTEGER NOT NULL,
    "pontos_casa" INTEGER NOT NULL,
    "pontos_visitante" INTEGER NOT NULL,
    "data" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Jogo_pkey" PRIMARY KEY ("equipe_casa","equipe_visitante")
);

-- AddForeignKey
ALTER TABLE "Jogador" ADD CONSTRAINT "Jogador_equipe_idequipe_fkey" FOREIGN KEY ("equipe_idequipe") REFERENCES "Equipe"("idequipe") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tecnico" ADD CONSTRAINT "Tecnico_equipe_idequipe_fkey" FOREIGN KEY ("equipe_idequipe") REFERENCES "Equipe"("idequipe") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cidade" ADD CONSTRAINT "Cidade_equipe_idequipe_fkey" FOREIGN KEY ("equipe_idequipe") REFERENCES "Equipe"("idequipe") ON DELETE RESTRICT ON UPDATE CASCADE;
