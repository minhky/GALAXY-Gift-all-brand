.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1084
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isShowAllInfoBuyPoint:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$24(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1086
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$25(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V

    .line 1087
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_down_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1089
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$27(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$28(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$29(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$30(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$31(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$32(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$34(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1114
    :goto_63
    return-void

    .line 1101
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$25(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V

    .line 1102
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_up_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1104
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$27(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$28(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$29(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$30(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$31(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$32(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$34(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63
.end method