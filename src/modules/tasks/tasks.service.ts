/* eslint-disable prettier/prettier */
import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from 'src/db/prisma.service';

@Injectable()
export class TasksService {
  constructor(private prisma: PrismaService) {}

  async create(data: Prisma.TasksCreateInput) {
    return await this.prisma.tasks.create({ data });
  }

  async findAll() {
    return await this.prisma.tasks.findMany();
  }

  async findOne(id: string) {
    return await this.prisma.tasks.findUnique({ where: { id } });
  }

  async update(id: string, data: Prisma.TasksUpdateInput) {
    return await this.prisma.tasks.update({ data, where: { id } });
  }

  async remove(id: string) {
    return await this.prisma.tasks.delete({ where: { id } });
  }
}