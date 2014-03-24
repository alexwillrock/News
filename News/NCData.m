//
//  NCData.m
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import "NCData.h"

@implementation NCData

+(NSArray *)fetchData{
    NSMutableArray *result = [NSMutableArray array];
    NCData *item;
    
    item = [[NCData alloc] init];
    item.category = @"Новости";
    item.title = @"В Саранске в День программиста пройдёт слёт «IT-Саранча»";
    item.author = @"";
    item.createdOn = @"Сентябрь 5, 2013";
    item.text = @"3 сентября IT-акселератор Технопарка Мордовии при поддержке Министерства промышленности, науки и новых технологий РМ проводит первую конференцию, посвящённую Дню программиста, слёт «IT-Саранча 2013»";
    item.imageName = @"1.jpg";
    [result addObject:item];
    
    item = [[NCData alloc] init];
    item.category = @"Встречи";
    item.title = @"Открыта регистрация на Winter Nights 2014: Mobile Games Conference!";
    item.author = @"";
    item.createdOn = @"Сентябрь 3, 2013";
    item.text = @"Народная мудрость гласит: «готовь игры с лета!», чтобы зимой было чем похвастаться перед другими разработчиками на самой крутой конференции Winter Nights: Mobile Games Conference! Компания Nevosoft, ";
    item.imageName = @"2.jpg";
    [result addObject:item];
    
    item = [[NCData alloc] init];
    item.category = @"Голосование";
    item.title = @"Старт голосования в «Медиа премии Рунета 2013»";
    item.author = @"";
    item.createdOn = @"Сентябрь 2, 2013";
    item.text = @"TimeofNewz.ru и Российская ассоциация электронных коммуникаций (РАЭК) сообщают о старте голосования в «Медиа премии Рунета 2013». Решить судьбу номинантов можно уже сейчас на странице http://mpremia.ru/#golos. ";
    item.imageName = @"3.jpg";
    [result addObject:item];
    
    item = [[NCData alloc] init];
    item.category = @"Встречи";
    item.title = @"Четвёртая встреча Клуба Питерских Приложений пройдёт 29 августа";
    item.author = @"";
    item.createdOn = @"Сентябрь 1, 2013";
    item.text = @"б Питерских Приложений — это ежемесячное собрание (со)владельцев, (со)основателей и управляющих коммерческих мобильных приложений из Санкт-Петербурга. На каждой встрече обсуждаются вопросы маркетинга (монетизации, продвижения, оптимизации) мобильных приложений.";
    item.imageName = @"4.jpg";
    [result addObject:item];
    
    return result;
}

@end
