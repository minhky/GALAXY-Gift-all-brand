.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;
.super Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;
.source "ItemTouchUIUtilImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .registers 8

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    .line 51
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 52
    if-ne v1, p2, :cond_14

    .line 50
    :cond_10
    :goto_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 55
    :cond_14
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->t(Landroid/view/View;)F

    move-result v1

    .line 56
    cmpl-float v4, v1, v0

    if-lez v4, :cond_10

    move v0, v1

    .line 57
    goto :goto_10

    .line 60
    :cond_1e
    return v0
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 65
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_15

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_15

    .line 67
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 69
    :cond_15
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->clearView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 11

    .prologue
    .line 35
    if-eqz p7, :cond_21

    .line 36
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 37
    if-nez v0, :cond_21

    .line 38
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->t(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    .line 40
    invoke-static {p3, v1}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 41
    sget v1, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    :cond_21
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 45
    return-void
.end method
