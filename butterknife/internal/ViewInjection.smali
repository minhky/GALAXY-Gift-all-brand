.class final Lbutterknife/internal/ViewInjection;
.super Ljava/lang/Object;
.source "ViewInjection.java"


# instance fields
.field private final id:I

.field private final listenerBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/ListenerBinding;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final viewBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/ViewBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    .line 19
    iput p1, p0, Lbutterknife/internal/ViewInjection;->id:I

    .line 20
    return-void
.end method


# virtual methods
.method public addListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)V
    .registers 8

    .prologue
    .line 41
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 42
    const/4 v1, 0x0

    .line 43
    if-nez v0, :cond_26

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    iget-object v2, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 49
    :goto_18
    if-nez v0, :cond_22

    .line 50
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_22
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void

    .line 47
    :cond_26
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_18
.end method

.method public addViewBinding(Lbutterknife/internal/ViewBinding;)V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lbutterknife/internal/ViewInjection;->id:I

    return v0
.end method

.method public getListenerBindings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/ListenerBinding;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getRequiredBindings()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbutterknife/internal/Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBinding;

    .line 63
    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 67
    :cond_21
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ListenerBinding;

    .line 70
    invoke-virtual {v0}, Lbutterknife/internal/ListenerBinding;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 76
    :cond_65
    return-object v1
.end method

.method public getViewBindings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lbutterknife/internal/ViewBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    return-object v0
.end method

.method public hasListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 36
    if-eqz v0, :cond_12

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
