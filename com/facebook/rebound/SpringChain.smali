.class public Lcom/facebook/rebound/SpringChain;
.super Ljava/lang/Object;
.source "SpringChain.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# static fields
.field private static final DEFAULT_ATTACHMENT_FRICTION:I = 0xa

.field private static final DEFAULT_ATTACHMENT_TENSION:I = 0x46

.field private static final DEFAULT_MAIN_FRICTION:I = 0x6

.field private static final DEFAULT_MAIN_TENSION:I = 0x28

.field private static id:I

.field private static final registry:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field private final mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mControlSpringIndex:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private final mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/rebound/SpringConfigRegistry;->getInstance()Lcom/facebook/rebound/SpringConfigRegistry;

    move-result-object v0

    sput-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/SpringChain;->id:I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 77
    const/16 v0, 0x28

    const/4 v1, 0x6

    const/16 v2, 0x46

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    .line 82
    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 10

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    .line 89
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 90
    int-to-double v0, p3

    int-to-double v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 92
    sget-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "main spring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 93
    sget-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachment spring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 94
    return-void
.end method

.method public static create()Lcom/facebook/rebound/SpringChain;
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/rebound/SpringChain;

    invoke-direct {v0}, Lcom/facebook/rebound/SpringChain;-><init>()V

    return-object v0
.end method

.method public static create(IIII)Lcom/facebook/rebound/SpringChain;
    .registers 5

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/rebound/SpringChain;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p0
.end method

.method public getAllSprings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public getControlSpring()Lcom/facebook/rebound/Spring;
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method public getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 192
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 186
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    .line 198
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 161
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 162
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    .line 165
    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-ne v2, v1, :cond_50

    .line 166
    add-int/lit8 v1, v2, -0x1

    .line 167
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    move v1, v2

    move v2, v6

    .line 173
    :goto_1a
    if-le v1, v3, :cond_33

    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_33

    .line 174
    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 176
    :cond_33
    if-le v2, v3, :cond_4c

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4c

    .line 177
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 179
    :cond_4c
    invoke-interface {v0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 180
    return-void

    .line 168
    :cond_50
    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-ge v2, v1, :cond_59

    .line 169
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_1a

    .line 170
    :cond_59
    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-le v2, v1, :cond_61

    .line 171
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    goto :goto_1a

    :cond_61
    move v2, v3

    move v1, v3

    goto :goto_1a
.end method

.method public setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;
    .registers 5

    .prologue
    .line 128
    iput p1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    .line 129
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 130
    if-nez v0, :cond_10

    .line 131
    const/4 p0, 0x0

    .line 137
    :goto_f
    return-object p0

    .line 133
    :cond_10
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 134
    iget-object v2, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    goto :goto_1a

    .line 136
    :cond_2c
    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    goto :goto_f
.end method
