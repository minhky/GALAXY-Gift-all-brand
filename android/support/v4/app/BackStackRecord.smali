.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v4/app/FragmentManagerImpl;

.field c:Landroid/support/v4/app/BackStackRecord$Op;

.field d:Landroid/support/v4/app/BackStackRecord$Op;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:I

.field q:I

.field r:Ljava/lang/CharSequence;

.field s:I

.field t:Ljava/lang/CharSequence;

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->a:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 3

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->m:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    .line 358
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    .line 359
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1040
    new-instance v2, Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    .line 1045
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1049
    :goto_18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_32

    .line 1050
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1051
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_54

    move v1, v9

    .line 1049
    :goto_2d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_18

    .line 1058
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_50

    .line 1059
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1060
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4d

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v8, v9

    .line 1058
    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 1067
    :cond_50
    if-nez v8, :cond_53

    .line 1068
    const/4 v2, 0x0

    .line 1071
    :cond_53
    return-object v2

    :cond_54
    move v1, v8

    goto :goto_2d
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1111
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1112
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 1113
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1114
    if-eqz p3, :cond_29

    .line 1115
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->a(Ljava/util/Collection;)Z

    .line 1122
    :cond_18
    :goto_18
    if-eqz p3, :cond_32

    .line 1123
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_25

    .line 1124
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1127
    :cond_25
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1136
    :goto_28
    return-object v0

    .line 1117
    :cond_29
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    goto :goto_18

    .line 1129
    :cond_32
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_3d

    .line 1130
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1133
    :cond_3d
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_28
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1307
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1311
    if-eqz p2, :cond_16

    .line 1312
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_12

    .line 1313
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1316
    :cond_12
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1324
    :goto_15
    return-object v0

    .line 1318
    :cond_16
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_21

    .line 1319
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1322
    :cond_21
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_15
.end method

.method static synthetic a(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .registers 5

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1337
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1348
    :goto_6
    return-object p2

    .line 1340
    :cond_7
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1341
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1342
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v3, :cond_2b

    .line 1343
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1344
    if-eqz v0, :cond_27

    .line 1345
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_2b
    move-object p2, v1

    .line 1348
    goto :goto_6
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1092
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 1093
    :cond_4
    const/4 v0, 0x0

    .line 1095
    :goto_5
    return-object v0

    :cond_6
    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1075
    if-nez p0, :cond_4

    .line 1076
    const/4 v0, 0x0

    .line 1078
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1102
    if-eqz p0, :cond_a

    .line 1103
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1106
    :cond_a
    return-object p0
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 420
    if-eqz p3, :cond_46

    .line 421
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_44
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 429
    :cond_46
    if-eqz p1, :cond_86

    .line 430
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_82

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_82

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_82
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 438
    :cond_86
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 439
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 440
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 441
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 442
    return-void
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1391
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    move v1, v2

    .line 1392
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 1393
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1394
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_43

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_43

    iget v3, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v3, p2, :cond_43

    .line 1396
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_47

    .line 1397
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1398
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1400
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_43
    :goto_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1403
    :cond_47
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1405
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1410
    :cond_54
    return-void
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1283
    if-eqz p4, :cond_1d

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1286
    :goto_4
    if-eqz v0, :cond_1c

    .line 1287
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1288
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1289
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/SharedElementCallback;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1291
    :cond_1c
    return-void

    .line 1283
    :cond_1d
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    goto :goto_4
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1438
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_30

    move v2, v0

    :goto_6
    move v3, v0

    .line 1439
    :goto_7
    if-ge v3, v2, :cond_3e

    .line 1440
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1441
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1442
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1443
    if-eqz v1, :cond_2c

    .line 1444
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1445
    if-eqz p3, :cond_38

    .line 1446
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 1438
    :cond_30
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_6

    .line 1448
    :cond_38
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1452
    :cond_3e
    return-void
.end method

.method private a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Landroid/support/v4/app/BackStackRecord$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1279
    return-void
.end method

.method private static a(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1427
    if-eqz p1, :cond_1f

    .line 1428
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1f

    .line 1429
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1430
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1431
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1434
    :cond_1f
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .registers 6

    .prologue
    .line 192
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1296
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1298
    if-eqz v0, :cond_1d

    .line 1299
    iget-object v1, p2, Landroid/support/v4/app/BackStackRecord$TransitionState;->c:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    iput-object v0, v1, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->a:Landroid/view/View;

    .line 1302
    :cond_1d
    return-void
.end method

.method private static a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1414
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 1415
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1416
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1417
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :cond_18
    :goto_18
    return-void

    .line 1415
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1421
    :cond_1c
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 751
    if-eqz p2, :cond_2a

    .line 752
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 753
    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 754
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    .line 756
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    :cond_21
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_2a

    .line 759
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    :cond_2a
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .registers 12

    .prologue
    .line 1380
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/BackStackRecord$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1388
    return-void
.end method

.method private a(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentContainer;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1154
    if-nez v6, :cond_12

    .line 1155
    const/4 v4, 0x0

    .line 1247
    :goto_11
    return v4

    .line 1157
    :cond_12
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1158
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1160
    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1161
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1163
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    .line 1164
    const/16 v20, 0x0

    .line 1165
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    if-eqz v7, :cond_82

    .line 1167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v20

    .line 1168
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1169
    const/4 v7, 0x0

    .line 1170
    const/16 v20, 0x0

    move-object v13, v7

    .line 1185
    :goto_55
    if-nez v12, :cond_87

    if-nez v13, :cond_87

    if-nez v14, :cond_87

    .line 1187
    const/4 v4, 0x0

    goto :goto_11

    .line 1173
    :cond_5d
    if-eqz p3, :cond_84

    iget-object v4, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1176
    :goto_61
    if-eqz v4, :cond_79

    .line 1177
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1178
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1179
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v10, v13}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_79
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1181
    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    :cond_82
    move-object v13, v7

    goto :goto_55

    .line 1173
    :cond_84
    iget-object v4, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    goto :goto_61

    .line 1190
    :cond_87
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v14, v9, v0, v1, v4}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v26

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    if-eqz v4, :cond_bf

    if-eqz v20, :cond_bf

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1197
    if-eqz v4, :cond_bf

    .line 1198
    if-eqz v26, :cond_ba

    .line 1199
    move-object/from16 v0, v26

    invoke-static {v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1201
    :cond_ba
    if-eqz v13, :cond_bf

    .line 1202
    invoke-static {v13, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1208
    :cond_bf
    new-instance v15, Landroid/support/v4/app/BackStackRecord$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V

    .line 1216
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    new-instance v21, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1219
    const/4 v4, 0x1

    .line 1220
    if-eqz v8, :cond_d9

    .line 1221
    if-eqz p3, :cond_13e

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v4

    .line 1224
    :cond_d9
    :goto_d9
    move-object/from16 v0, v26

    invoke-static {v12, v0, v13, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v30

    .line 1227
    if-eqz v30, :cond_139

    .line 1228
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->c:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v18, v0

    move-object v14, v6

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1236
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1240
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1242
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->b:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v22, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v19

    move-object/from16 v28, v13

    move-object/from16 v29, v11

    move-object/from16 v32, v21

    invoke-static/range {v22 .. v32}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1247
    :cond_139
    if-eqz v30, :cond_143

    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1221
    :cond_13e
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v4

    goto :goto_d9

    .line 1247
    :cond_143
    const/4 v4, 0x0

    goto/16 :goto_11
.end method

.method private b(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1363
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1364
    if-eqz v1, :cond_1c

    .line 1365
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    .line 1366
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1367
    if-eqz p3, :cond_1d

    .line 1368
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1375
    :cond_1c
    :goto_1c
    return-object v0

    .line 1371
    :cond_1d
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->a(Ljava/util/Collection;)Z

    goto :goto_1c
.end method

.method private static b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1083
    if-nez p0, :cond_4

    .line 1084
    const/4 v0, 0x0

    .line 1086
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private b(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1456
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    .line 1457
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_29

    .line 1458
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1459
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1460
    if-eqz p3, :cond_23

    .line 1461
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :goto_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1463
    :cond_23
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 1466
    :cond_29
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 841
    :cond_a
    return-void

    .line 798
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    .line 799
    :goto_e
    if-eqz v3, :cond_a

    .line 800
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_7a

    .line 839
    :goto_15
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    goto :goto_e

    .line 802
    :pswitch_19
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 805
    :pswitch_1f
    iget-object v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 806
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_56

    .line 807
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2a
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 808
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 809
    if-eqz v2, :cond_46

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_4e

    .line 810
    :cond_46
    if-ne v0, v2, :cond_52

    .line 811
    const/4 v2, 0x0

    .line 812
    iget v0, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 807
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 814
    :cond_52
    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_4e

    .line 819
    :cond_56
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 823
    :pswitch_5c
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 826
    :pswitch_62
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 829
    :pswitch_68
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 832
    :pswitch_6e
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 835
    :pswitch_74
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 800
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 767
    if-eqz p3, :cond_31

    .line 768
    iget v0, p3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 769
    if-eqz v0, :cond_1a

    .line 770
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_11

    .line 771
    invoke-virtual {p2, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    :cond_11
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_1a

    .line 774
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 777
    :cond_1a
    iget v0, p3, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_31

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lt v0, v2, :cond_31

    .line 778
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;)V

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v1, p3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 782
    :cond_31
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_e
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_3f

    .line 627
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 629
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 630
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 632
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    .line 633
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-eqz v0, :cond_56

    .line 634
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    .line 638
    :goto_4e
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 639
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    return v0

    .line 636
    :cond_56
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    goto :goto_4e
.end method

.method public a(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 894
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_35

    .line 895
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 897
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 898
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 901
    :cond_35
    sget-boolean v0, Landroid/support/v4/app/BackStackRecord;->a:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lt v0, v9, :cond_51

    .line 902
    if-nez p2, :cond_86

    .line 903
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_51

    .line 904
    :cond_4d
    invoke-direct {p0, p3, p4, v9}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object p2

    .line 911
    :cond_51
    :goto_51
    invoke-virtual {p0, v10}, Landroid/support/v4/app/BackStackRecord;->a(I)V

    .line 913
    if-eqz p2, :cond_90

    move v7, v2

    .line 914
    :goto_57
    if-eqz p2, :cond_94

    move v1, v2

    .line 915
    :goto_5a
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v6, v0

    .line 916
    :goto_5d
    if-eqz v6, :cond_121

    .line 917
    if-eqz p2, :cond_98

    move v5, v2

    .line 918
    :goto_62
    if-eqz p2, :cond_9c

    move v0, v2

    .line 919
    :goto_65
    iget v3, v6, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v3, :pswitch_data_140

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_86
    if-nez p1, :cond_51

    .line 907
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->u:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_51

    .line 913
    :cond_90
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->k:I

    move v7, v0

    goto :goto_57

    .line 914
    :cond_94
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    move v1, v0

    goto :goto_5a

    .line 917
    :cond_98
    iget v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    move v5, v0

    goto :goto_62

    .line 918
    :cond_9c
    iget v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    goto :goto_65

    .line 921
    :pswitch_9f
    iget-object v3, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 922
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 923
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 975
    :cond_ac
    :goto_ac
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v6, v0

    .line 976
    goto :goto_5d

    .line 927
    :pswitch_b0
    iget-object v3, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 928
    if-eqz v3, :cond_bf

    .line 929
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 930
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v8

    invoke-virtual {v0, v3, v8, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 933
    :cond_bf
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_ac

    move v3, v2

    .line 934
    :goto_c4
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ac

    .line 935
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 936
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 937
    iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 934
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c4

    .line 942
    :pswitch_df
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 943
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 944
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_ac

    .line 947
    :pswitch_e9
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 948
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 949
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_ac

    .line 953
    :pswitch_f7
    iget-object v3, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 954
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 955
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_ac

    .line 959
    :pswitch_105
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 960
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 961
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_ac

    .line 965
    :pswitch_113
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 966
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 967
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_ac

    .line 978
    :cond_121
    if-eqz p1, :cond_131

    .line 979
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v9}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    move-object p2, v4

    .line 984
    :cond_131
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ltz v0, :cond_13e

    .line 985
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(I)V

    .line 986
    iput v10, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    .line 988
    :cond_13e
    return-object p2

    .line 919
    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_b0
        :pswitch_df
        :pswitch_e9
        :pswitch_f7
        :pswitch_105
        :pswitch_113
    .end packed-switch
.end method

.method public a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 414
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    .prologue
    .line 458
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 459
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 460
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 461
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 463
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    .prologue
    .line 403
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 404
    return-object p0
.end method

.method a(I)V
    .registers 8

    .prologue
    .line 592
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-nez v0, :cond_5

    .line 614
    :cond_4
    return-void

    .line 595
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    .line 598
    :goto_31
    if-eqz v2, :cond_4

    .line 599
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6d

    .line 600
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 601
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_6d

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_6d
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b8

    .line 605
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7a
    if-ltz v1, :cond_b8

    .line 606
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 607
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 608
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_b4

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_b4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7a

    .line 612
    :cond_b8
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    goto/16 :goto_31
.end method

.method a(Landroid/support/v4/app/BackStackRecord$Op;)V
    .registers 3

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_1f

    .line 389
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    .line 395
    :goto_8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    .line 396
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    .line 397
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    .line 398
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->i:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    .line 399
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->e:I

    .line 400
    return-void

    .line 391
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 392
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    .line 393
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_8
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 890
    :cond_a
    return-void

    .line 857
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->d:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    .line 858
    :goto_e
    if-eqz v2, :cond_a

    .line 859
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_62

    .line 888
    :goto_15
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    goto :goto_e

    .line 861
    :pswitch_19
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 864
    :pswitch_1f
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    .line 865
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2c
    if-ltz v1, :cond_3d

    .line 866
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 865
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 869
    :cond_3d
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 872
    :pswitch_43
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 875
    :pswitch_49
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 878
    :pswitch_4f
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 881
    :pswitch_55
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 884
    :pswitch_5b
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_15

    .line 859
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
        :pswitch_43
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_5b
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 262
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 265
    if-eqz p3, :cond_e8

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string/jumbo v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 269
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    if-eqz v0, :cond_4c

    .line 270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    :cond_4c
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    if-nez v0, :cond_54

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-eqz v0, :cond_75

    .line 276
    :cond_54
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    :cond_75
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    if-nez v0, :cond_7d

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->i:I

    if-eqz v0, :cond_9e

    .line 282
    :cond_7d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    :cond_9e
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->q:I

    if-nez v0, :cond_a6

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c3

    .line 288
    :cond_a6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 293
    :cond_c3
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->s:I

    if-nez v0, :cond_cb

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e8

    .line 294
    :cond_cb
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 301
    :cond_e8
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v0, :cond_21b

    .line 302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    move v2, v1

    move-object v3, v0

    .line 306
    :goto_10d
    if-eqz v3, :cond_21b

    .line 308
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_21c

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_12a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 320
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 322
    if-eqz p3, :cond_19e

    .line 323
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    if-nez v0, :cond_154

    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    if-eqz v0, :cond_175

    .line 324
    :cond_154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    :cond_175
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    if-nez v0, :cond_17d

    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    if-eqz v0, :cond_19e

    .line 330
    :cond_17d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    :cond_19e
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_214

    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_214

    move v0, v1

    .line 337
    :goto_1ab
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_214

    .line 338
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f9

    .line 340
    const-string/jumbo v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    :goto_1c5
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ab

    .line 309
    :pswitch_1d1
    const-string/jumbo v0, "NULL"

    goto/16 :goto_12a

    .line 310
    :pswitch_1d6
    const-string/jumbo v0, "ADD"

    goto/16 :goto_12a

    .line 311
    :pswitch_1db
    const-string/jumbo v0, "REPLACE"

    goto/16 :goto_12a

    .line 312
    :pswitch_1e0
    const-string/jumbo v0, "REMOVE"

    goto/16 :goto_12a

    .line 313
    :pswitch_1e5
    const-string/jumbo v0, "HIDE"

    goto/16 :goto_12a

    .line 314
    :pswitch_1ea
    const-string/jumbo v0, "SHOW"

    goto/16 :goto_12a

    .line 315
    :pswitch_1ef
    const-string/jumbo v0, "DETACH"

    goto/16 :goto_12a

    .line 316
    :pswitch_1f4
    const-string/jumbo v0, "ATTACH"

    goto/16 :goto_12a

    .line 342
    :cond_1f9
    if-nez v0, :cond_201

    .line 343
    const-string/jumbo v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_201
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 346
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c5

    .line 351
    :cond_214
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    .line 352
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 353
    goto/16 :goto_10d

    .line 355
    :cond_21b
    return-void

    .line 308
    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1d1
        :pswitch_1d6
        :pswitch_1db
        :pswitch_1e0
        :pswitch_1e5
        :pswitch_1ea
        :pswitch_1ef
        :pswitch_1f4
    .end packed-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6

    .prologue
    .line 449
    if-nez p1, :cond_b

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 454
    return-object p0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    .prologue
    .line 485
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 486
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 487
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 488
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 490
    return-object p0
.end method

.method public c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    .prologue
    .line 494
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 495
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 496
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 497
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 499
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->n:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 14

    .prologue
    .line 643
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-eqz v0, :cond_2f

    .line 646
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-gez v0, :cond_2f

    .line 647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(I)V

    .line 653
    const/4 v0, 0x0

    .line 656
    sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->a:Z

    if-eqz v1, :cond_1a3

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1a3

    .line 657
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 658
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 660
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/BackStackRecord;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 662
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v0

    move-object v8, v0

    .line 665
    :goto_52
    if-eqz v8, :cond_88

    const/4 v0, 0x0

    move v7, v0

    .line 666
    :goto_56
    if-eqz v8, :cond_8c

    const/4 v0, 0x0

    move v1, v0

    .line 667
    :goto_5a
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v6, v0

    .line 668
    :goto_5d
    if-eqz v6, :cond_18f

    .line 669
    if-eqz v8, :cond_90

    const/4 v0, 0x0

    move v5, v0

    .line 670
    :goto_63
    if-eqz v8, :cond_94

    const/4 v0, 0x0

    move v2, v0

    .line 671
    :goto_67
    iget v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_1a6

    .line 735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_88
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->k:I

    move v7, v0

    goto :goto_56

    .line 666
    :cond_8c
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    move v1, v0

    goto :goto_5a

    .line 669
    :cond_90
    iget v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    move v5, v0

    goto :goto_63

    .line 670
    :cond_94
    iget v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    move v2, v0

    goto :goto_67

    .line 673
    :pswitch_98
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 674
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 675
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 739
    :cond_a2
    :goto_a2
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v6, v0

    .line 740
    goto :goto_5d

    .line 678
    :pswitch_a6
    iget-object v3, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 679
    iget v9, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 680
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_14c

    .line 681
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_bb
    if-ltz v4, :cond_14c

    .line 682
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 683
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v10, :cond_f0

    const-string/jumbo v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "OP_REPLACE: adding="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_f0
    iget v10, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v10, v9, :cond_14a

    .line 686
    if-ne v0, v3, :cond_fe

    .line 687
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 681
    :goto_f9
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    goto :goto_bb

    .line 689
    :cond_fe
    iget-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_109

    .line 690
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    .line 692
    :cond_109
    iget-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 694
    iget-boolean v10, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-eqz v10, :cond_145

    .line 695
    iget v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 696
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v10, :cond_145

    const-string/jumbo v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Bump nesting of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_145
    iget-object v10, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v10, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_14a
    move-object v0, v3

    goto :goto_f9

    .line 704
    :cond_14c
    if-eqz v3, :cond_a2

    .line 705
    iput v5, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_a2

    .line 710
    :pswitch_158
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 711
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 712
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_a2

    .line 715
    :pswitch_163
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 716
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 717
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_a2

    .line 720
    :pswitch_16e
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 721
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_a2

    .line 725
    :pswitch_179
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 726
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 727
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_a2

    .line 730
    :pswitch_184
    iget-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 731
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 732
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_a2

    .line 742
    :cond_18f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 744
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-eqz v0, :cond_1a2

    .line 745
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/BackStackRecord;)V

    .line 747
    :cond_1a2
    return-void

    :cond_1a3
    move-object v8, v0

    goto/16 :goto_52

    .line 671
    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_98
        :pswitch_a6
        :pswitch_158
        :pswitch_163
        :pswitch_16e
        :pswitch_179
        :pswitch_184
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ltz v1, :cond_27

    .line 249
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    :cond_27
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->n:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 253
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_36
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
