//
//  ViewController.m
//  XHProgressHUD
//
//  Created by power on 2019/11/21.
//  Copyright © 2019 Henan XinKangqiao. All rights reserved.
//

#import "ViewController.h"
#import "XHProgressHUD.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong) NSMutableArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.dataArr[indexPath.row]];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
     
        [XHProgressHUD showLoading];
        
    }else if (indexPath.row == 1){
        
    }
}



-(NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr = [NSMutableArray arrayWithArray:@[
            @"弹出 菊花 HUD （文字）文字默认为loading...",
            @""
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        ]];
    }
    return _dataArr;
}

@end
