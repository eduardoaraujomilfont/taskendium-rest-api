-- CreateTable
CREATE TABLE "Tasks" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "observations" TEXT NOT NULL,
    "completion" BOOLEAN NOT NULL,
    "type" TEXT NOT NULL,
    "counter" TEXT NOT NULL,
    "userid" TEXT NOT NULL,

    CONSTRAINT "Tasks_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Tasks_title_key" ON "Tasks"("title");

-- AddForeignKey
ALTER TABLE "Tasks" ADD CONSTRAINT "Tasks_userid_fkey" FOREIGN KEY ("userid") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
