-- CreateTable
CREATE TABLE "YoutubeChannel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "YoutubeStats" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "subscriber" INTEGER NOT NULL DEFAULT 0,
    "views" INTEGER NOT NULL DEFAULT 0,
    "channelId" INTEGER NOT NULL,
    CONSTRAINT "YoutubeStats_channelId_fkey" FOREIGN KEY ("channelId") REFERENCES "YoutubeChannel" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "YoutubeChannel_title_key" ON "YoutubeChannel"("title");

-- CreateIndex
CREATE UNIQUE INDEX "YoutubeStats_channelId_key" ON "YoutubeStats"("channelId");
