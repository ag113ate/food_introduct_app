# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

# ハンバーグセット
Food.create(:menu => "ハンバーグセット（ライス、スープ、ドリンク付き）", 
            :description\
            => \
            "柔らかくて、おいしいハンバーグです。
            
            国産牛100%です。
            
            ソースは以下から1つ選んでください。
            　・デミグラスソース
            　・オニオンソース
            　・テリヤキソース
            　
            スープは日替わりです。")


# ステーキセット
Food.create(:menu => "ステーキセット（ライス、スープ、ドリンク付き）", 
            :description\
            => \
            "とにかくおいしいステーキです。
            
            国産牛100%です。
            
            ソースは以下から1つ選んでください。
            　・ガーリック
            　・オニオン
            　・わさび醤油
            　
            スープは日替わりです。")


# パスタセット
Food.create(:menu => "パスタセット（スープ、ドリンク付き）", 
            :description\
            => \
            "おいしいです。
            
            原料の小麦にもこだわりがあります。
            
            ソースは以下から1つ選んでください。
            　・ぺペロンチーノ
            　・ミートソース
            　・カルボナーラ
            　
            スープは日替わりです。")
