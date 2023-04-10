import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from 'src/db/prisma.service';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}

  async create(data: Prisma.UsersCreateInput) {
    return await this.prisma.users.create({ data });
  }

  async findAll() {
    return await this.prisma.users.findMany();
  }

  async findOne(id: string) {
    return await this.prisma.users.findUnique({ where: { id } });
  }

  async update(id: string, data: Prisma.UsersUpdateInput) {
    return await this.prisma.users.update({ data, where: { id } });
  }

  async remove(id: string) {
    return await this.prisma.users.delete({ where: { id } });
  }
}
