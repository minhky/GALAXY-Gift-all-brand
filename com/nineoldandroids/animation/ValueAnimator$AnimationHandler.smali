.class Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/animation/ValueAnimator$1;)V
    .registers 2

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .prologue
    .line 585
    const/4 v3, 0x1

    .line 586
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->h()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 587
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->i()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 588
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12a

    .line 682
    :cond_1a
    :goto_1a
    return-void

    .line 592
    :pswitch_1b
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->j()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_31

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_126

    .line 594
    :cond_31
    const/4 v3, 0x0

    move v5, v3

    .line 601
    :cond_33
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_66

    .line 602
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 606
    const/4 v4, 0x0

    move v6, v4

    :goto_48
    if-ge v6, v7, :cond_33

    .line 607
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 609
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_61

    .line 610
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->b(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 606
    :goto_5d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_48

    .line 612
    :cond_61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :pswitch_65
    move v5, v3

    .line 620
    :cond_66
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 621
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->k()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 622
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->l()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 626
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 627
    const/4 v4, 0x0

    move v6, v4

    :goto_84
    if-ge v6, v7, :cond_99

    .line 628
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 629
    invoke-static {v4, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 630
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_95
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_84

    .line 633
    :cond_99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 634
    if-lez v7, :cond_ba

    .line 635
    const/4 v4, 0x0

    move v6, v4

    :goto_a1
    if-ge v6, v7, :cond_b7

    .line 636
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 637
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->b(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 638
    const/4 v10, 0x1

    invoke-static {v4, v10}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator;Z)Z

    .line 639
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a1

    .line 641
    :cond_b7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 646
    :cond_ba
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 647
    const/4 v4, 0x0

    .line 648
    :goto_bf
    if-ge v4, v6, :cond_e4

    .line 649
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 650
    invoke-virtual {v2, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->e(J)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 651
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_d0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_dc

    .line 654
    add-int/lit8 v2, v4, 0x1

    move v4, v6

    :goto_d9
    move v6, v4

    move v4, v2

    .line 666
    goto :goto_bf

    .line 663
    :cond_dc
    add-int/lit8 v6, v6, -0x1

    .line 664
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v4

    move v4, v6

    goto :goto_d9

    .line 667
    :cond_e4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_102

    .line 668
    const/4 v2, 0x0

    move v4, v2

    :goto_ec
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_ff

    .line 669
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->c(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 668
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_ec

    .line 671
    :cond_ff
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_102
    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 677
    :cond_110
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->m()J

    move-result-wide v4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1a

    :cond_126
    move v5, v3

    goto/16 :goto_33

    .line 588
    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_65
    .end packed-switch
.end method
