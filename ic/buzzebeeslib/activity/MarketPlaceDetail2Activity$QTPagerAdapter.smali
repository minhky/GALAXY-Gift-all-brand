.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QTPagerAdapter"
.end annotation


# instance fields
.field private arrImg:[Ljava/lang/Integer;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;[Ljava/lang/Integer;)V
    .registers 4
    .param p2, "arrImg"    # [Ljava/lang/Integer;

    .prologue
    .line 4170
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 4171
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 4172
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->arrImg:[Ljava/lang/Integer;

    .line 4173
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 4177
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 4178
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 4182
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 4186
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->arrImg:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 4192
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->qt_content:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4193
    .local v0, "imageLayout":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$id;->imgGiftWelcome:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4194
    .local v1, "imgGiftWelcome":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4195
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->arrImg:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge p2, v2, :cond_2f

    .line 4196
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4197
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;->arrImg:[Ljava/lang/Integer;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4202
    :goto_29
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 4203
    return-object v0

    .line 4199
    .restart local p1    # "view":Landroid/view/ViewGroup;
    :cond_2f
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 4209
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 4214
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 4218
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 4223
    return-void
.end method
