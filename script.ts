import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function createYtChannel() {
    const channel = await prisma.youtubeChannel.create({
        data: {
            title: "Coding Goose",
            stats: {
                create: {
                    subscriber: 129,
                    views: 10000
                }
            }
        }
    });
    console.log(channel);
}

async function getAllChannels() {
    const channels = await prisma.youtubeChannel.findMany();
    console.log(channels)
}

getAllChannels()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })
