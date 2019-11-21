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
    
    
    switch (indexPath.row) {
        case 0:
            [XHProgressHUD showLoading];
            break;
        case 1:
            [XHProgressHUD showLoadingHud:@"正在加载..."];
            break;
            
            
       case 2:
            [XHProgressHUD hidenHud];
            break;
            
        default:
            break;
    }
}



-(NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr = [NSMutableArray arrayWithArray:@[
            @"文字默认为loading...",
            @"增加文字",
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        @"隐藏"
        ]];
    }
    return _dataArr;
}

@end
