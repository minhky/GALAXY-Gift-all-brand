.class Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 29
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    .line 30
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    .line 31
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    .line 32
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->e:I

    .line 33
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->f:I

    .line 35
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    .line 36
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    return v0
.end method

.method public a(II)V
    .registers 5

    .prologue
    const/high16 v1, -0x80000000

    .line 55
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    .line 56
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->h:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    if-eqz v0, :cond_16

    .line 59
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 60
    :cond_11
    if-eq p1, v1, :cond_15

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    .line 65
    :cond_15
    :goto_15
    return-void

    .line 62
    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 63
    :cond_1a
    if-eq p2, v1, :cond_15

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    goto :goto_15
.end method

.method public a(Z)V
    .registers 4

    .prologue
    const/high16 v1, -0x80000000

    .line 74
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    if-ne p1, v0, :cond_7

    .line 90
    :goto_6
    return-void

    .line 77
    :cond_7
    iput-boolean p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    .line 78
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->h:Z

    if-eqz v0, :cond_3d

    .line 79
    if-eqz p1, :cond_26

    .line 80
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    if-eq v0, v1, :cond_20

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    :goto_15
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 81
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    :goto_1d
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    goto :goto_6

    .line 80
    :cond_20
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->e:I

    goto :goto_15

    .line 81
    :cond_23
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->f:I

    goto :goto_1d

    .line 83
    :cond_26
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->c:I

    :goto_2c
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 84
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    if-eq v0, v1, :cond_3a

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->d:I

    :goto_34
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    goto :goto_6

    .line 83
    :cond_37
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->e:I

    goto :goto_2c

    .line 84
    :cond_3a
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->f:I

    goto :goto_34

    .line 87
    :cond_3d
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->e:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 88
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->f:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    goto :goto_6
.end method

.method public b()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    return v0
.end method

.method public b(II)V
    .registers 5

    .prologue
    const/high16 v1, -0x80000000

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->h:Z

    .line 69
    if-eq p1, v1, :cond_b

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->e:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    .line 70
    :cond_b
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->f:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    .line 71
    :cond_11
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    goto :goto_6
.end method

.method public d()I
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->g:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->a:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->b:I

    goto :goto_6
.end method
