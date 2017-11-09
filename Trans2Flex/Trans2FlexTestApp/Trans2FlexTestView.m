#import "Trans2FlexTestView.h"

@interface Trans2FlexTestView ()
@property (nonatomic, strong) UIView *Trans2FlexTestView;
@property (nonatomic, strong) UIView *Cards;
@property (nonatomic, strong) UIView *TransTestCard;
@property (nonatomic, strong) UIView *nickNameGroup;
@property (nonatomic, strong) UIImageView *head;
@property (nonatomic, strong) UIView *nickNameGroup1;
@property (nonatomic, strong) UILabel *nickName;
@property (nonatomic, strong) UILabel *time;
@property (nonatomic, strong) UIImageView *options;
@property (nonatomic, strong) UILabel *saying;
@property (nonatomic, strong) UIImageView *runningGirl;
@property (nonatomic, strong) UILabel *action;

@end

@implementation Trans2FlexTestView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.contentSize = CGSizeMake(375.0, 667.0);
        UIView *Trans2FlexTestView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 375.0, 667.0)];
        UIImage *Trans2FlexTestViewImage = [UIImage imageNamed:@"images/B0D0E63B-EAC5-455C-822B-236DBD55770E.png"];
        if (!Trans2FlexTestViewImage) {
            Trans2FlexTestView.backgroundColor = [UIColor colorWithRed:235/ 255.0 green:239/ 255.0 blue:237/ 255.0 alpha:1.000000];
        }
        UIImageView *Trans2FlexTestViewBGImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,Trans2FlexTestView.frame.size.width,Trans2FlexTestView.frame.size.height)];
        [Trans2FlexTestViewBGImageView setImage:Trans2FlexTestViewImage];
        [Trans2FlexTestView addSubview:Trans2FlexTestViewBGImageView];
        [self addSubview:Trans2FlexTestView];
        self.Trans2FlexTestView = Trans2FlexTestView;
        
        UIView *Cards = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 375.0, 667.0)];
        UIImage *CardsImage = [UIImage imageNamed:@"images/A58EA24F-B254-47EE-BE3A-09DA822FEAEE.png"];
        if (!CardsImage) {
            Cards.backgroundColor = [UIColor colorWithRed:((0xebefed & 0xFF0000) >> 16) / 255.0 green:((0xebefed & 0xFF00) >> 8) / 255.0 blue:((0xebefed & 0xFF)) / 255.0 alpha:1.0];
        }
        UIImageView *CardsBGImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,Cards.frame.size.width,Cards.frame.size.height)];
        [CardsBGImageView setImage:CardsImage];
        [Cards addSubview:CardsBGImageView];
        [Trans2FlexTestView addSubview:Cards];
        self.Cards = Cards;
        
        UIView *TransTestCard = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 375.0, 525.5)];
        UIImage *TransTestCardImage = [UIImage imageNamed:@"images/C13E921A-1876-44DC-BDEC-D3C50961E0ED.png"];
        if (!TransTestCardImage) {
            TransTestCard.backgroundColor = [UIColor colorWithRed:((0xffffff & 0xFF0000) >> 16) / 255.0 green:((0xffffff & 0xFF00) >> 8) / 255.0 blue:((0xffffff & 0xFF)) / 255.0 alpha:1.0];
        }
        UIImageView *TransTestCardBGImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,TransTestCard.frame.size.width,TransTestCard.frame.size.height)];
        [TransTestCardBGImageView setImage:TransTestCardImage];
        [TransTestCard addSubview:TransTestCardBGImageView];
        [Cards addSubview:TransTestCard];
        self.TransTestCard = TransTestCard;
        
        UIView *nickNameGroup = [[UIView alloc] initWithFrame:CGRectMake(0.0, 12.0, 375.0, 36.0)];
        UIImage *nickNameGroupImage = [UIImage imageNamed:@"images/046BF2A1-435B-46C6-9DB6-C07B96C13142.png"];
        UIImageView *nickNameGroupBGImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,nickNameGroup.frame.size.width,nickNameGroup.frame.size.height)];
        [nickNameGroupBGImageView setImage:nickNameGroupImage];
        [nickNameGroup addSubview:nickNameGroupBGImageView];
        [TransTestCard addSubview:nickNameGroup];
        self.nickNameGroup = nickNameGroup;
        
        UIImageView *head = [[UIImageView alloc] initWithFrame:CGRectMake(12.0, 0.0, 36.0, 36.0)];
        UIImage *headImage = [UIImage imageNamed:@"images/990F5512-084F-4205-801D-6069AF730E4A.png"];
        [head setImage:headImage];
        [nickNameGroup addSubview:head];
        self.head = head;
        
        UIView *nickNameGroup1 = [[UIView alloc] initWithFrame:CGRectMake(56.0, 0.0, 270.0, 36.0)];
        UIImage *nickNameGroup1Image = [UIImage imageNamed:@"images/5C40C3DA-FFDB-4D4C-B8DE-A7B45A2C6F96.png"];
        UIImageView *nickNameGroup1BGImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,nickNameGroup1.frame.size.width,nickNameGroup1.frame.size.height)];
        [nickNameGroup1BGImageView setImage:nickNameGroup1Image];
        [nickNameGroup1 addSubview:nickNameGroup1BGImageView];
        [nickNameGroup addSubview:nickNameGroup1];
        self.nickNameGroup1 = nickNameGroup1;
        
        UILabel *nickName = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 270.0, 20.0)];
        nickName.font = [UIFont systemFontOfSize:13.0f];
        nickName.textColor = [UIColor colorWithRed:((0x3f3f3f & 0xFF0000) >> 16) / 255.0 green:((0x3f3f3f & 0xFF00) >> 8) / 255.0 blue:((0x3f3f3f & 0xFF)) / 255.0 alpha:1.0];
        nickName.textAlignment = NSTextAlignmentLeft;
        nickName.text = @"Ashley Kim";
        nickName.numberOfLines = 0;
        [nickNameGroup1 addSubview:nickName];
        self.nickName = nickName;
        
        UILabel *time = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 20.0, 270.0, 12.0)];
        time.font = [UIFont systemFontOfSize:11.0f];
        time.textColor = [UIColor colorWithRed:((0xa4a9b0 & 0xFF0000) >> 16) / 255.0 green:((0xa4a9b0 & 0xFF00) >> 8) / 255.0 blue:((0xa4a9b0 & 0xFF)) / 255.0 alpha:1.0];
        time.textAlignment = NSTextAlignmentLeft;
        time.text = @"11:21";
        time.numberOfLines = 0;
        [nickNameGroup1 addSubview:time];
        self.time = time;
        
        UIImageView *options = [[UIImageView alloc] initWithFrame:CGRectMake(351.0, 6.0, 12.5, 7.0)];
        UIImage *optionsImage = [UIImage imageNamed:@"images/4E32294C-AA2D-4671-83C4-46EC83ECEC36.png"];
        [options setImage:optionsImage];
        [nickNameGroup addSubview:options];
        self.options = options;
        
        UILabel *saying = [[UILabel alloc] initWithFrame:CGRectMake(12.0, 58.0, 351.0, 40.0)];
        saying.font = [UIFont systemFontOfSize:13.0f];
        saying.textColor = [UIColor colorWithRed:((0x000000 & 0xFF0000) >> 16) / 255.0 green:((0x000000 & 0xFF00) >> 8) / 255.0 blue:((0x000000 & 0xFF)) / 255.0 alpha:1.0];
        saying.textAlignment = NSTextAlignmentLeft;
        saying.text = @"Running Girl.\nShe looks great.";
        saying.numberOfLines = 0;
        [TransTestCard addSubview:saying];
        self.saying = saying;
        
        UIImageView *runningGirl = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 108.0, 375.0, 375.0)];
        UIImage *runningGirlImage = [UIImage imageNamed:@"images/C324C76C-204F-4E1E-AEA9-D7B754DFA675.png"];
        [runningGirl setImage:runningGirlImage];
        [TransTestCard addSubview:runningGirl];
        self.runningGirl = runningGirl;
        
        UILabel *action = [[UILabel alloc] initWithFrame:CGRectMake(152.0, 493.0, 71.5, 22.5)];
        action.font = [UIFont systemFontOfSize:15.0f];
        action.textColor = [UIColor colorWithRed:((0x00aaee & 0xFF0000) >> 16) / 255.0 green:((0x00aaee & 0xFF00) >> 8) / 255.0 blue:((0x00aaee & 0xFF)) / 255.0 alpha:1.0];
        action.textAlignment = NSTextAlignmentLeft;
        action.text = @"See More";
        action.numberOfLines = 0;
        [TransTestCard addSubview:action];
        self.action = action;
        
        
    }
    return self;
}
@end

