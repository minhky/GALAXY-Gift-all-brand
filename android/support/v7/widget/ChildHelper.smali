.class Landroid/support/v7/widget/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# instance fields
.field final a:Landroid/support/v7/widget/ChildHelper$Callback;

.field final b:Landroid/support/v7/widget/ChildHelper$Bucket;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ChildHelper$Callback;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    .line 50
    new-instance v0, Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    .line 52
    return-void
.end method

.method private e(I)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 114
    if-gez p1, :cond_5

    move v0, v1

    .line 131
    :cond_4
    :goto_4
    return v0

    .line 117
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a()I

    move-result v2

    move v0, p1

    .line 119
    :goto_c
    if-ge v0, v2, :cond_27

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->e(I)I

    move-result v3

    .line 121
    sub-int v3, v0, v3

    sub-int v3, p1, v3

    .line 122
    if-nez v3, :cond_25

    .line 123
    :goto_1a
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 128
    :cond_25
    add-int/2addr v0, v3

    .line 130
    goto :goto_c

    :cond_27
    move v0, v1

    .line 131
    goto :goto_4
.end method

.method private g(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->c(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private h(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->d(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method a(II)Landroid/view/View;
    .registers 8

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_38

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 210
    iget-object v3, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_34

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_34

    const/4 v4, -0x1

    if-eq p2, v4, :cond_33

    .line 212
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, p2, :cond_34

    .line 216
    :cond_33
    :goto_33
    return-object v0

    .line 208
    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 216
    :cond_38
    const/4 v0, 0x0

    goto :goto_33
.end method

.method a()V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->a()V

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_26

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->d(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 189
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 193
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->b()V

    .line 197
    return-void
.end method

.method a(I)V
    .registers 5

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->e(I)I

    move-result v0

    .line 161
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->b(I)Landroid/view/View;

    move-result-object v1

    .line 162
    if-nez v1, :cond_d

    .line 172
    :goto_c
    return-void

    .line 165
    :cond_d
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->d(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 166
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ChildHelper;->h(Landroid/view/View;)Z

    .line 168
    :cond_18
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a(I)V

    goto :goto_c
.end method

.method a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;)I

    move-result v0

    .line 141
    if-gez v0, :cond_9

    .line 151
    :goto_8
    return-void

    .line 144
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->d(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->h(Landroid/view/View;)Z

    .line 147
    :cond_14
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a(I)V

    goto :goto_8
.end method

.method a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 7

    .prologue
    .line 230
    if-gez p2, :cond_18

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a()I

    move-result v0

    .line 235
    :goto_8
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/ChildHelper$Bucket;->a(IZ)V

    .line 236
    if-eqz p4, :cond_12

    .line 237
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->g(Landroid/view/View;)V

    .line 239
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void

    .line 233
    :cond_18
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ChildHelper;->e(I)I

    move-result v0

    goto :goto_8
.end method

.method a(Landroid/view/View;IZ)V
    .registers 6

    .prologue
    .line 98
    if-gez p2, :cond_18

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a()I

    move-result v0

    .line 103
    :goto_8
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/ChildHelper$Bucket;->a(IZ)V

    .line 104
    if-eqz p3, :cond_12

    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->g(Landroid/view/View;)V

    .line 107
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;I)V

    .line 111
    return-void

    .line 101
    :cond_18
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ChildHelper;->e(I)I

    move-result v0

    goto :goto_8
.end method

.method a(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;IZ)V

    .line 86
    return-void
.end method

.method b()I
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method b(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 297
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;)I

    move-result v1

    .line 298
    if-ne v1, v0, :cond_a

    .line 309
    :cond_9
    :goto_9
    return v0

    .line 301
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->c(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->e(I)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_9
.end method

.method b(I)Landroid/view/View;
    .registers 4

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->e(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method c()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->a()I

    move-result v0

    return v0
.end method

.method c(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method c(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d(I)V
    .registers 4

    .prologue
    .line 282
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->e(I)I

    move-result v0

    .line 283
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->d(I)Z

    .line 284
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->c(I)V

    .line 288
    return-void
.end method

.method d(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;)I

    move-result v0

    .line 329
    if-gez v0, :cond_22

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->a(I)V

    .line 336
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->g(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method e(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;)I

    move-result v0

    .line 351
    if-gez v0, :cond_22

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->c(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trying to unhide a view that was not hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_44
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->b(I)V

    .line 358
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->h(Landroid/view/View;)Z

    .line 359
    return-void
.end method

.method f(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(Landroid/view/View;)I

    move-result v1

    .line 374
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 375
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 389
    :cond_10
    :goto_10
    return v0

    .line 380
    :cond_11
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 381
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->d(I)Z

    .line 382
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->h(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 386
    :cond_24
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->a:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/ChildHelper$Callback;->a(I)V

    goto :goto_10

    .line 389
    :cond_2a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->b:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
