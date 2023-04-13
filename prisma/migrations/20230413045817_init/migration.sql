-- CreateTable
CREATE TABLE "Users" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "user" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_user_key" ON "Users"("user");

-- CreateIndex
CREATE UNIQUE INDEX "Users_password_key" ON "Users"("password");
