.class Lcom/nineoldandroids/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/nineoldandroids/animation/Animator;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/animation/Animator;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    .line 894
    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    .line 900
    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    .line 907
    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->f:Z

    .line 924
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    .line 925
    return-void
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/animation/AnimatorSet$Node;
    .registers 3

    .prologue
    .line 951
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 952
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->c()Lcom/nineoldandroids/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 953
    return-object v0

    .line 954
    :catch_f
    move-exception v0

    .line 955
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
    .registers 4

    .prologue
    .line 933
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    .line 937
    :cond_12
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 939
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_28
    iget-object v0, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 942
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_35

    .line 943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    .line 945
    :cond_35
    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a()Lcom/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
